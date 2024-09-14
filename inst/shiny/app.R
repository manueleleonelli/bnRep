# Define UI for the application
library(shiny)
library(shinythemes)
library(shinyjs)
library(dplyr)
library(bnlearn)  # Assuming this is needed for graphviz.plot
library(DT)       # For interactive tables
library(qgraph)

# Define UI for the application
ui <- fluidPage(
  shinyjs::useShinyjs(),  # Enable shinyjs for additional functionalities
  theme = shinythemes::shinytheme("cosmo"),  # A modern and elegant theme

  titlePanel("bnRep Explorer"),

  tabsetPanel(
    tabPanel(
      "Network Viewer",
      sidebarLayout(
        sidebarPanel(
          width = 3,  # Set width of the sidebar
          h3("Filter Options"),
          p("Use the filters below to narrow down your search and visualize Bayesian networks."),

          # Dropdowns for categorical filters
          selectInput("type_filter", "Type:", choices = c("All")),
          selectInput("structure_filter", "Structure:", choices = c("All")),
          selectInput("probabilities_filter", "Probabilities:", choices = c("All")),
          selectInput("graph_filter", "Graph:", choices = c("All")),
          selectInput("area_filter", "Area:", choices = c("All")),
          selectInput("journal_filter", "Journal:", choices = c("All")),

          hr(),  # Horizontal line separator

          # Sliders for numeric filters
          sliderInput("year_filter", "Year:", min = 1900, max = 2100, value = c(1900, 2100), step = 1, sep = ""),
          sliderInput("nodes_filter", "Number of Nodes:", min = 0, max = 100, value = c(0, 100), step = 1),
          sliderInput("arcs_filter", "Number of Arcs:", min = 0, max = 100, value = c(0, 100), step = 1),
          sliderInput("parameters_filter", "Number of Parameters:", min = 0, max = 100, value = c(0, 100), step = 1),

          ),

        mainPanel(
          width = 9,  # Set width of the main panel

          fluidRow(
            # Top bar for instructions, search, select, and plot functionalities
            column(12,
                   wellPanel(
                     h3("Instructions"),
                     p("Select a network from the dropdown list and click 'Plot Network' to visualize it. You can use the search box to filter by name, or the left sidebar to filter by characteristics."),
                     hr(),  # Horizontal line separator
                     fluidRow(
                       column(4, textInput("search_term", "Search Networks:", "")),
                       column(4, uiOutput("network_select_ui")),
                       column(4,
                              radioButtons("plot_method", "Plotting Method:",
                                           choices = list("Graphviz" = "graphviz", "qgraph" = "qgraph"),
                                           inline = TRUE),
                              actionButton("plot_btn", "Plot Network", icon = icon("play-circle"))
                       )
                     ),
                     style = "background-color: #e9ecef; border-radius: 8px; padding: 15px; box-shadow: 0px 0px 10px rgba(0,0,0,0.1);"  # Custom styling
                   )
            )
          ),

          # Plot area
          fluidRow(
            column(12,
                   plotOutput("network_plot")
            )
          )
        )
      )
    ),
    tabPanel(
      "Data Explorer",
      fluidRow(
        column(12,
               h3("Explore the BNs in bnRep"),
               DT::DTOutput("summary_table")
        )
      )
    )
  ),

  # Add custom CSS for additional styling
  tags$style(HTML("
    .sidebarPanel {
      background-color: #e9f5ff;  /* Light blue background */
      padding: 20px;  /* Add padding */
      border-right: 1px solid #b3d4fc;  /* Lighter blue border */
    }
    .mainPanel {
      background-color: #ffffff;  /* White background */
      padding: 20px;  /* Add padding */
    }
    .well {
      background-color: #d0e4f1;  /* Light blue for input containers */
      border-radius: 8px;  /* Rounded corners */
      padding: 15px;  /* Padding inside well panel */
      box-shadow: 0px 0px 10px rgba(0,0,0,0.1);  /* Subtle shadow */
    }
    .shiny-input-container {
      margin-bottom: 15px;  /* Space between inputs */
    }
    .btn-primary {
      background-color: #4a90e2;  /* Blue button color */
      border-color: #4a90e2;
    }
    .btn-primary:hover {
      background-color: #357abd;  /* Darker blue for hover */
      border-color: #2a5d8e;
    }
    .titlePanel {
      color: #1c4f7a;  /* Darker blue for the title */
      margin-bottom: 20px;
    }
    .info {
      background-color: #d0e4f1;  /* Light blue background for info section */
      padding: 10px;  /* Add padding */
      border-radius: 8px;  /* Rounded corners */
      margin-bottom: 15px;  /* Space below the info box */
    }
    .info p {
      font-size: 14px;  /* Smaller font size for info text */
      color: #1c4f7a;  /* Darker blue color for info text */
      margin: 0;  /* Remove margin around paragraphs */
    }
    .slider-tick-label {
      color: #1c4f7a;  /* Darker blue for slider labels */
    }
    .truncate {
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
      max-width: 200px;
      display: inline-block;
      vertical-align: middle;
    }
    .truncate:hover {
      overflow: visible;
      white-space: normal;
      word-wrap: break-word;
      max-width: none;
    }
  "))
)

server <- function(input, output, session) {
  # Load the summary dataframe
  bnRep_summary <- bnRep::bnRep_summary

  # Convert relevant columns to character if not already
  bnRep_summary <- bnRep_summary |>
    dplyr::mutate(across(c(Type, Structure, Probabilities, Graph, Area, Journal), as.character))

  # Reactive expression to compute slider ranges based on data
  slider_ranges <- reactive({
    list(
      nodes = range(bnRep_summary$Nodes, na.rm = TRUE),
      arcs = range(bnRep_summary$Arcs, na.rm = TRUE),
      parameters = range(bnRep_summary$Parameters, na.rm = TRUE),
      year = range(bnRep_summary$Year, na.rm = TRUE)
    )
  })

  # Reactive expression to get filtered dataframe based on selected filters and search term
  filtered_summary <- reactive({
    data <- bnRep_summary

    # Apply categorical filters
    if (input$type_filter != "All") data <- data |> filter(Type == input$type_filter)
    if (input$structure_filter != "All") data <- data |> filter(Structure == input$structure_filter)
    if (input$probabilities_filter != "All") data <- data |> filter(Probabilities == input$probabilities_filter)
    if (input$graph_filter != "All") data <- data |> filter(Graph == input$graph_filter)
    if (input$area_filter != "All") data <- data |> filter(Area == input$area_filter)
    if (input$journal_filter != "All") data <- data |> filter(Journal == input$journal_filter)

    # Apply numeric filters
    data <- data |>
      filter(Nodes >= input$nodes_filter[1] & Nodes <= input$nodes_filter[2]) |>
      filter(Arcs >= input$arcs_filter[1] & Arcs <= input$arcs_filter[2]) |>
      filter(Parameters >= input$parameters_filter[1] & Parameters <= input$parameters_filter[2]) |>
      filter(Year >= input$year_filter[1] & Year <= input$year_filter[2])
    # Apply search term filter (case-insensitive)
    if (input$search_term != "") {
      data <- data |> filter(grepl(input$search_term, Name, ignore.case = TRUE))
    }

    data
  })

  # Initialize choices for dropdowns
  initialize_dropdowns <- function() {
    unique_types <- c("All", sort(unique(bnRep_summary$Type)))
    unique_structures <- c("All", sort(unique(bnRep_summary$Structure)))
    unique_probabilities <- c("All", sort(unique(bnRep_summary$Probabilities)))
    unique_graphs <- c("All", sort(unique(bnRep_summary$Graph)))
    unique_areas <- c("All", sort(unique(bnRep_summary$Area)))
    unique_journals <- c("All", sort(unique(bnRep_summary$Journal)))

    updateSelectInput(session, "type_filter", choices = unique_types)
    updateSelectInput(session, "structure_filter", choices = unique_structures)
    updateSelectInput(session, "probabilities_filter", choices = unique_probabilities)
    updateSelectInput(session, "graph_filter", choices = unique_graphs)
    updateSelectInput(session, "area_filter", choices = unique_areas)
    updateSelectInput(session, "journal_filter", choices = unique_journals)
  }


  # Update network names dropdown based on filtered dataframe
  update_network_dropdown <- function() {
    networks <- filtered_summary() |> dplyr::pull(Name)
    # Update dropdown with filtered networks or an empty list if no networks match
    updateSelectInput(session, "network_select", choices = if (length(networks) > 0) networks else character(0))
  }

  # Update network select input label with count of available networks
  output$network_select_ui <- renderUI({
    networks_count <- nrow(filtered_summary())
    selectInput("network_select", paste("Select Network:", sprintf("(%d networks available)", networks_count)), choices = NULL)
  })

  # Update the network list dropdown
  update_network_list <- function() {
    networks <- filtered_summary() |> dplyr::pull(Name)
    # Update network list with filtered networks or an empty list if no networks match
    updateSelectInput(session, "network_list_display", choices = if (length(networks) > 0) networks else character(0))
  }

  # Initialize dropdowns on app start
  initialize_dropdowns()

  # Observe changes in filters and update network names dropdown and network list
  observe({
    update_network_dropdown()
    update_network_list()
  })

  # Update slider ranges when app starts
  observe({
    ranges <- slider_ranges()

    updateSliderInput(session, "nodes_filter", min = ranges$nodes[1], max = ranges$nodes[2], value = ranges$nodes)
    updateSliderInput(session, "arcs_filter", min = ranges$arcs[1], max = ranges$arcs[2], value = ranges$arcs)
    updateSliderInput(session, "parameters_filter", min = ranges$parameters[1], max = ranges$parameters[2], value = ranges$parameters)
    updateSliderInput(session, "year_filter", min = ranges$year[1], max = ranges$year[2], value = ranges$year)

  })

  # Render the network plot based on selected network when button is clicked
  observeEvent(input$plot_btn, {
    req(input$network_select)  # Ensure a network is selected

    # Load the selected network
    selected_network <- load_network(input$network_select)

    # Render the network using graphviz.plot
    output$network_plot <- renderPlot({
      if (input$plot_method == "graphviz") {
        graphviz.plot(selected_network)
      } else if (input$plot_method == "qgraph") {
        qgraph::qgraph(arcs(selected_network))
      }
    })
  })

  # Render the summary table
  output$summary_table <- DT::renderDT({
    # Convert all character columns to factors, except for 'Name' and 'Reference'
    transformed_summary <- filtered_summary() %>%
      mutate(across(where(is.character) & !c(Name, Reference), as.factor))

    datatable(
      transformed_summary %>%
        dplyr::mutate(
          Reference = paste0(
            '<div class="truncate" title="', Reference, '">',
            substr(Reference, 1, 50),
            ifelse(nchar(Reference) > 50, "...", ""),
            '</div>'
          )
        ),
      extensions = c('Buttons', 'ColReorder', 'KeyTable'),
      options = list(
        dom = 'Bfrtip',
        buttons = c('copy', 'csv', 'excel', 'pdf', 'print'),
        colReorder = TRUE,
        keys = TRUE,
        pageLength = 10,
        autoWidth = TRUE,
        columnDefs = list(list(width = '300px', targets = "_all"))
      ),
      filter = 'top',
      escape = FALSE,  # Allow HTML rendering
      selection = 'multiple'
    )
  })
}

shinyApp(ui = ui, server = server)
