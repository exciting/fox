program test

  use FoX_wxml, only : xmlf_t, xml_OpenFile, xml_Close
  use FoX_wxml, only : xml_NewElement, xml_DeclareNamespace, xml_AddAttribute, xml_EndElement
  implicit none

  character(len=*), parameter :: filename = 'test.xml'
  type(xmlf_t) :: xf

  call xml_OpenFile(filename, xf)
  call xml_NewElement(xf, "cml")
  call xml_DeclareNamespace(xf, "http://www.w3.org/1999/xhtml", "html")
  call xml_AddAttribute(xf, "html:class", "emin")
  call xml_DeclareNamespace(xf, "http://www.w3.org/1999/svg", "svg")
  call xml_NewElement(xf, "svg:svg")
  call xml_EndElement(xf, "svg:svg")
  call xml_NewElement(xf, "svg:svg")

  call xml_Close(xf)

end program test
