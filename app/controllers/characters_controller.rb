class CharactersController < ApplicationController
  def download
    pdf = Prawn::Document.new
    pdf.text 'Hello World'
    send_data(pdf.render,
      filename: 'hello.pdf',
      type: 'application/pdf')
  end

  def preview
  end
end
