program test

  use FoX_wxml, only : xmlf_t, xml_OpenFile, xml_Close
  use FoX_wxml, only : xml_NewElement, xml_EndElement, xml_AddXMLPI
  implicit none

  character(len=*), parameter :: filename = 'test.xml'
  type(xmlf_t) :: xf

  call xml_OpenFile(filename, xf)
  call xml_NewElement(xf, "root")
  call xml_AddXMLPI(xf, "lalal")
  call xml_EndElement(xf, "root")
  call xml_Close(xf)

end program test
