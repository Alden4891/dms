from reportlab.lib.pagesizes import letter
from reportlab.lib import colors
from reportlab.lib.units import inch
from reportlab.platypus import SimpleDocTemplate, Table, TableStyle, Paragraph
from reportlab.lib.styles import getSampleStyleSheet

# Create a PDF document
doc = SimpleDocTemplate("table.pdf", pagesize=letter, leftMargin=2*inch, topMargin=10.5*inch)

# Define table data
data = [
    ["ID","Name", "Age", "Gender"],
    [1,Paragraph("John Doe is a long name that needs to be wrapped.", style=getSampleStyleSheet()["Normal"]), "30", "Male"],
    [2,Paragraph("Jane Doe is another long name that needs to be wrapped.", style=getSampleStyleSheet()["Normal"]), "25", "Female"],
    [3,"Bob", "40", "Male"],
    [4,"Alice", "35", "Female"],
]

# Create a table
table = Table(data, x=2*inch, y=9*inch)

# Define table style
table_style = TableStyle([
    ('BACKGROUND', (0, 0), (-1, 0), colors.grey),
    ('TEXTCOLOR', (0, 0), (-1, 0), colors.whitesmoke),
    ('ALIGN', (0, 0), (-1, 0), 'CENTER'),
    ('FONTNAME', (0, 0), (-1, 0), 'Helvetica-Bold'),
    ('FONTSIZE', (0, 0), (-1, 0), 14),
    ('BOTTOMPADDING', (0, 0), (-1, 0), 12),
    ('BACKGROUND', (0, 1), (-1, -1), colors.beige),
    ('TEXTCOLOR', (0, 1), (-1, -1), colors.black),
    ('ALIGN', (0, 1), (-1, -1), 'CENTER'),
    ('FONTNAME', (0, 1), (-1, -1), 'Helvetica'),
    ('FONTSIZE', (0, 1), (-1, -1), 12),
    ('BOTTOMPADDING', (0, 1), (-1, -1), 6),
])

# Apply table style
table.setStyle(table_style)

# Add table to PDF document
elements = []
elements.append(table)
doc.build(elements)
