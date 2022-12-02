!/////////////////////////////////////////////////////////

!#define _BEM_FINALIZE_

!/////////////////////////////////////////////////////////
!
!  BEM_FINALIZE
!
!> @brief deallocation of arrays
!> @author Ziyu GE
!
!/////////////////////////////////////////////////////////

SUBROUTINE BEM_FINALIZE(NEL)

!/////////////////////////////////////////////////////////

!USE MOD_KINDS
!USE MOD_STDOUT

IMPLICIT NONE

!/////////////////////////////////////////////////////////

!REAL*8, INTENT(inout) :: TRADIUS(300), TCHORD(300), TGAMMA(300), TABCISSE(300),TCL(300),TCD(300)

INTEGER, INTENT(IN) :: NEL

INTEGER :: I

CHARACTER(LEN = 1) :: SECTION_CHAR

!/////////////////////////////////////////////////////////


!DEALLOCATE(TRADIUS,TCHORD,TGAMMA, TABCISSE,TCL,TCD)

DO I = 1, 1 !NEL

    WRITE(SECTION_CHAR, '(I1)') I

    CALL SYSTEM("del polar_auto"//SECTION_CHAR//".dat" )

    !CALL SYSTEM("del polar_dump"//SECTION_CHAR//".dat")

END DO

!/////////////////////////////////////////////////////////

END SUBROUTINE BEM_FINALIZE

!/////////////////////////////////////////////////////////
