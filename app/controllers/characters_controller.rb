class CharactersController < ApplicationController
  def download
    file = "#{Prawn::DATADIR}/pdfs/mothership-character-sheet.pdf"
    pdf = Prawn::Document.generate("full_template.pdf", :template => file) 
    # pdf.text 'Hello World'
    # send_data(pdf.render,
    #   filename: 'hello.pdf',
    #   type: 'application/pdf')
    render pdf.as_json
  end

  def preview
  end
end
