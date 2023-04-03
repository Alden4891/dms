from fpdf import FPDF

# Create a PDF object
pdf = FPDF()

# Add a page
pdf.add_page()

# Set font and text color
pdf.set_font("Arial", size=12)
pdf.set_text_color(0, 0, 0)

# Define border and text box
border_width = 1
box_width = pdf.w - 2 * border_width
box_height = 50
# pdf.rect(10, 10, 50, box_height)

# Add text with wrapping
pdf.multi_cell(50, 5, "This is a long text that needs to be wrapped within a box. The box has a rectangular border and a width of {} units and a height of {} units. The text is automatically wrapped using the multicell method.".format(10, 10), border=0, align="J")

pdf.set_xy(62,10)

pdf.multi_cell(40, 5, "This is a long text that needs to be wrapped within a box. The box has a rectangular border and a width of {} units and a height of {} units. The text is automatically wrapped using the multicell method. asd shf sdfh asdfh asfd  sd sdf sdf jafsdgfj askfsdgfjkasdg jkgfff sajk sajkfgjk sdgfsdhfs kjdfgs jkd sjdfgksjag fksf jsgfk jasgdfksajgdf ajsdgf jas ".format(10, 10), border=0, align="J")

pdf.image('./images/alden-logo.jpg', 160, 8, 30)


# Output the PDF file
pdf.output("example.pdf")
