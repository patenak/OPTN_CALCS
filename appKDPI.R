################################################################################
#OPTN KDPI CALCULATOR MOCK-UP
#Calculator location:  
#https://optn.transplant.hrsa.gov/resources/allocation-calculators/epts-calculator/
#15-SEP-2016
#
#mock-up by: k.l.patenaude
#
#DISCLAIMER: THIS APPLICATION DOES NOT PROVIDE MEDICAL ADVICE
#The information, including but not limited to, text, graphics, images and other material 
#contained in this application are for informational purposes only. The purpose of this application 
#is to reprodcue an existing public web application for application portfolio 
#and prototyping purposes. It is not intended to be a substitute for professional medical advice, 
#diagnosis or treatment.

#Always seek the advice of your physician or other qualified health care provider 
#with any questions you may have regarding a medical condition or treatment and before 
#undertaking a new health care regimen, and never disregard professional medical advice 
#or delay in seeking it.

library(shiny)

ui <- fluidPage(
  
  tags$head(tags$style("body{
                              font-family: Geneva, sans-serif;
                       font-style: normal; 
                       background-color: SkyBlue;
                       }")
            ),
  
  navbarPage("KDPI CALCULATOR",
    tabPanel("About / Disclaimer",
             tags$p(),
             tags$p(style = "text-align: center", icon("exclamation-triangle","fa-2x"),
                    'THIS APPLICATION IS A REPRODUCTION OF THE OPTN KDPI CALCULATOR',
                    icon("exclamation-triangle","fa-2x")),
             tags$p(style = "text-align: center", 'Please visit', 
                    tags$a(href="https://optn.transplant.hrsa.gov/resources/allocation-calculators/kdpi-calculator/", 
                           "OPTN KDPI Calculator Page"), 'for offical calculator and information'),
             tags$p(style = "text-align: center", icon("exclamation-triangle","fa-2x"),
                    "DISCLAIMER: THIS APPLICATION DOES NOT PROVIDE MEDICAL ADVICE",
                    icon("exclamation-triangle","fa-2x")),
             tags$p("The information, including but not limited to, text, graphics, images and other material 
                    contained in this application are for informational purposes only. The purpose of this application 
                    is to mimic an existing web application for personal portfolio purposes. It is 
                    not intended to be a substitute for professional medical advice, diagnosis or treatment. 
                    Always seek the advice of your physician or other qualified health care provider 
                    with any questions you may have regarding a medical condition or treatment and before 
                    undertaking a new health care regimen, and never disregard professional medical advice 
                    or delay in seeking it.")
    ),
    tabPanel("Instructions",
      tags$p("The Kidney Donor Risk Index (KDRI) combines a variety of donor factors 
             to summarize the risk of graft failure after kidney transplant into a 
             single number. The KDRI expresses the relative risk of kidney graft failure 
             for a given donor compared to the median kidney donor from last year; 
             values exceeding 1 have higher expected risk than the median donor, 
             and vice versa."),
      tags$p("The KDPI is a remapping of the KDRI onto a cumulative percentage scale, 
             such that a donor with a KDPI of 80% has higher expected risk of graft 
             failure than 80% of all kidney donors recovered last year and can be used 
             to compute KDPI and KDRI for a hypothetical or actual donor. The 
             calculations and assumptions mirror those used for computing KDPI and 
             KDRI in DonorNet."),
      tags$ul(
        tags$li("If diabetes or hypertension statuses are unknown, the calculator will 
                assume the donor has the same chance as a randomly selected donor 
                having the condition."),
        tags$li("If HCV status is unknown, the calculator will assume the donor 
                is negative for HCV.")
      ),
      tags$p('Please visit',
             tags$a(href='https://optn.transplant.hrsa.gov/media/1512/guide_to_calculating_interpreting_kdpi.pdf', 
                    "Guide to Calculating and interpreting KDPI"), 
             'for offical information on calculating KDPI.'),
      tags$p('Please visit',
             tags$a(href='https://www.transplantpro.org/wp-content/uploads/sites/3/KDPI_Mapping_Table.pdf', 
                    "KDRI to KDPI Mapping Table"), 
             'for current mapping of KDRI value to KDPI Score.')

    ),
    tabPanel("Calculator"),
    tabPanel("About Me",
      tags$div(id = "aboutMe",
        tags$p(tags$strong("Reproduction By:")),
        tags$p(style = "font-size: 20px", tags$strong("Kevin Patenaude")),
        tags$p(icon("calendar"), "Date: 15-SEP-2016"),
        tags$p(icon("envelope"), 
          tags$a(href = "mailto:k.l.patenaude@gmail.com",
                "k.l.patenaude@gmail.com")
          ),
        tags$p(icon("linkedin-square"), 
          tags$a(href="https://www.linkedin.com/in/kevinpatenaude", 
            "//linkedin.com/in/kevinpatenaude")
        ),
        tags$p(icon("github"), 
          tags$a(href="https://github.com/patenak", 
            "//github.com/patenak")
        )
      )
    )
  )
  
)

server <- function(input, output) {}

shinyApp(ui = ui, server = server)