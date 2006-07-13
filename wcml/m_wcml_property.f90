 
! This file is AUTOGENERATED!!!!
! Do not edit this file; edit m_wcml_quantity.m4 and regenerate.
!
!
module m_wcml_property

  use FoX_wxml, only: xmlf_t
  use FoX_wxml, only: xml_NewElement, xml_AddAttribute
  use FoX_wxml, only: xml_EndElement
  use m_wcml_stml, only: stmAddValue

  implicit none
  private

  integer, parameter ::  sp = selected_real_kind(6,30)
  integer, parameter ::  dp = selected_real_kind(14,100)

  interface cmlAddproperty
     module procedure propertyScaRealDp
     module procedure propertyArrRealDpSi
     module procedure propertyArrRealDpSh
     module procedure propertyMatRealDpSi
     module procedure propertyMatRealDpSh
     module procedure propertyScaRealSp
     module procedure propertyArrRealSpSi
     module procedure propertyArrRealSpSh
     module procedure propertyMatRealSpSi
     module procedure propertyMatRealSpSh
     module procedure propertyScaInt
     module procedure propertyArrIntSi
     module procedure propertyArrIntSh
     module procedure propertyMatIntSi
     module procedure propertyMatIntSh
     module procedure propertyScaLg
     module procedure propertyArrLgSi
     module procedure propertyArrLgSh
     module procedure propertyMatLgSi
     module procedure propertyMatLgSh
     module procedure propertyScaCh
     module procedure propertyArrChSi
     module procedure propertyArrChSh
     module procedure propertyMatChSi
     module procedure propertyMatChSh

  end interface cmlAddproperty

  public :: cmlAddproperty
  public :: cmlStartpropertyList
  public :: cmlEndpropertyList

contains

  subroutine cmlStartpropertyList(xf, id, title, dictRef, convention, ref, role)

    type(xmlf_t), intent(inout) :: xf
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

 
    call xml_NewElement(xf, "propertyList")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    
  end subroutine cmlStartpropertyList

  subroutine cmlEndpropertyList(xf)

    type(xmlf_t), intent(inout) :: xf

    Call xml_EndElement(xf, "propertyList")
    
  end subroutine cmlEndpropertyList


  subroutine propertyScaRealDp &
    (xf, value, id, title, dictRef, convention, ref, role, units ,fmt)

    type(xmlf_t), intent(inout)              :: xf
    real(dp) , intent(in) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units
    character(len=*), intent(in), optional :: fmt

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value , units=units ,fmt=fmt )
    call xml_EndElement(xf, "property")

  end subroutine propertyScaRealDp

  subroutine propertyScaRealSp &
    (xf, value, id, title, dictRef, convention, ref, role, units ,fmt)

    type(xmlf_t), intent(inout)              :: xf
    real(sp) , intent(in) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units
    character(len=*), intent(in), optional :: fmt

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value , units=units ,fmt=fmt )
    call xml_EndElement(xf, "property")

  end subroutine propertyScaRealSp

  subroutine propertyScaInt &
    (xf, value, id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    integer , intent(in) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value , units=units  )
    call xml_EndElement(xf, "property")

  end subroutine propertyScaInt

  subroutine propertyScaLg &
    (xf, value, id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    logical , intent(in) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value   )
    call xml_EndElement(xf, "property")

  end subroutine propertyScaLg

  subroutine propertyScaCh &
    (xf, value, id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    character(len=*) , intent(in) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value , units=units  )
    call xml_EndElement(xf, "property")

  end subroutine propertyScaCh


  subroutine propertyArrRealDpSi &
    (xf, value, nvalue,  id, title, dictRef, convention, ref, role, units ,fmt)

    type(xmlf_t), intent(inout)              :: xf
    integer, intent(in)                      :: nvalue
    real(dp) , intent(in) :: value(* )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units
    character(len=*), intent(in), optional :: fmt

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value(:nvalue) , units=units ,fmt=fmt )
    call xml_EndElement(xf, "property")
  end subroutine propertyArrRealDpSi

  subroutine propertyArrRealSpSi &
    (xf, value, nvalue,  id, title, dictRef, convention, ref, role, units ,fmt)

    type(xmlf_t), intent(inout)              :: xf
    integer, intent(in)                      :: nvalue
    real(sp) , intent(in) :: value(* )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units
    character(len=*), intent(in), optional :: fmt

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value(:nvalue) , units=units ,fmt=fmt )
    call xml_EndElement(xf, "property")
  end subroutine propertyArrRealSpSi

  subroutine propertyArrIntSi &
    (xf, value, nvalue,  id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    integer, intent(in)                      :: nvalue
    integer , intent(in) :: value(* )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value(:nvalue) , units=units  )
    call xml_EndElement(xf, "property")
  end subroutine propertyArrIntSi

  subroutine propertyArrLgSi &
    (xf, value, nvalue,  id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    integer, intent(in)                      :: nvalue
    logical , intent(in) :: value(* )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value(:nvalue)   )
    call xml_EndElement(xf, "property")
  end subroutine propertyArrLgSi

  subroutine propertyArrChSi &
    (xf, value, nvalue,  id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    integer, intent(in)                      :: nvalue
    character(len=*) , intent(in) :: value(* )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value(:nvalue) , units=units  )
    call xml_EndElement(xf, "property")
  end subroutine propertyArrChSi


  subroutine propertyArrRealDpSh &
    (xf, value,  id, title, dictRef, convention, ref, role, units ,fmt)

    type(xmlf_t), intent(inout)              :: xf
    real(dp) , intent(in) :: value(: )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units
    character(len=*), intent(in), optional :: fmt

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value , units=units ,fmt=fmt )
    call xml_EndElement(xf, "property")
  end subroutine propertyArrRealDpSh

  subroutine propertyArrRealSpSh &
    (xf, value,  id, title, dictRef, convention, ref, role, units ,fmt)

    type(xmlf_t), intent(inout)              :: xf
    real(sp) , intent(in) :: value(: )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units
    character(len=*), intent(in), optional :: fmt

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value , units=units ,fmt=fmt )
    call xml_EndElement(xf, "property")
  end subroutine propertyArrRealSpSh

  subroutine propertyArrIntSh &
    (xf, value,  id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    integer , intent(in) :: value(: )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value , units=units  )
    call xml_EndElement(xf, "property")
  end subroutine propertyArrIntSh

  subroutine propertyArrLgSh &
    (xf, value,  id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    logical , intent(in) :: value(: )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value   )
    call xml_EndElement(xf, "property")
  end subroutine propertyArrLgSh

  subroutine propertyArrChSh &
    (xf, value,  id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    character(len=*) , intent(in) :: value(: )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value , units=units  )
    call xml_EndElement(xf, "property")
  end subroutine propertyArrChSh


  subroutine propertyMatRealDpSi &
    (xf, value, nrows, ncols,  id, title, dictRef, convention, ref, role, units ,fmt)

    type(xmlf_t), intent(inout)              :: xf
    integer, intent(in)                      :: nrows, ncols
    real(dp) , intent(in) :: value(nrows, * )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units
    character(len=*), intent(in), optional :: fmt

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value(:nrows,:ncols) , units=units , fmt=fmt )
    call xml_EndElement(xf, "property")
  end subroutine propertyMatRealDpSi

  subroutine propertyMatRealSpSi &
    (xf, value, nrows, ncols,  id, title, dictRef, convention, ref, role, units ,fmt)

    type(xmlf_t), intent(inout)              :: xf
    integer, intent(in)                      :: nrows, ncols
    real(sp) , intent(in) :: value(nrows, * )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units
    character(len=*), intent(in), optional :: fmt

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value(:nrows,:ncols) , units=units , fmt=fmt )
    call xml_EndElement(xf, "property")
  end subroutine propertyMatRealSpSi

  subroutine propertyMatIntSi &
    (xf, value, nrows, ncols,  id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    integer, intent(in)                      :: nrows, ncols
    integer , intent(in) :: value(nrows, * )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value(:nrows,:ncols) , units=units  )
    call xml_EndElement(xf, "property")
  end subroutine propertyMatIntSi

  subroutine propertyMatLgSi &
    (xf, value, nrows, ncols,  id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    integer, intent(in)                      :: nrows, ncols
    logical , intent(in) :: value(nrows, * )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value(:nrows,:ncols)   )
    call xml_EndElement(xf, "property")
  end subroutine propertyMatLgSi

  subroutine propertyMatChSi &
    (xf, value, nrows, ncols,  id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    integer, intent(in)                      :: nrows, ncols
    character(len=*) , intent(in) :: value(nrows, * )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value(:nrows,:ncols) , units=units  )
    call xml_EndElement(xf, "property")
  end subroutine propertyMatChSi


  subroutine propertyMatRealDpSh &
    (xf, value,  id, title, dictRef, convention, ref, role, units ,fmt)

    type(xmlf_t), intent(inout)              :: xf
    real(dp) , intent(in) :: value(:, : )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units
    character(len=*), intent(in), optional :: fmt

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value , units=units , fmt=fmt )
    call xml_EndElement(xf, "property")
  end subroutine propertyMatRealDpSh

  subroutine propertyMatRealSpSh &
    (xf, value,  id, title, dictRef, convention, ref, role, units ,fmt)

    type(xmlf_t), intent(inout)              :: xf
    real(sp) , intent(in) :: value(:, : )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units
    character(len=*), intent(in), optional :: fmt

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value , units=units , fmt=fmt )
    call xml_EndElement(xf, "property")
  end subroutine propertyMatRealSpSh

  subroutine propertyMatIntSh &
    (xf, value,  id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    integer , intent(in) :: value(:, : )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value , units=units  )
    call xml_EndElement(xf, "property")
  end subroutine propertyMatIntSh

  subroutine propertyMatLgSh &
    (xf, value,  id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    logical , intent(in) :: value(:, : )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value   )
    call xml_EndElement(xf, "property")
  end subroutine propertyMatLgSh

  subroutine propertyMatChSh &
    (xf, value,  id, title, dictRef, convention, ref, role, units )

    type(xmlf_t), intent(inout)              :: xf
    character(len=*) , intent(in) :: value(:, : )
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: ref
    character(len=*), intent(in), optional :: role

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "property")
    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)
    if (present(role)) call xml_addAttribute(xf, "role", role)

    call stmAddValue(xf=xf, value=value , units=units  )
    call xml_EndElement(xf, "property")
  end subroutine propertyMatChSh


end module m_wcml_property

