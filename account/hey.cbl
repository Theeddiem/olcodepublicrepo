       IDENTIFICATION DIVISION.
       PROGRAM-ID. RMACTDT.

       DATA DIVISION.
       LINKAGE SECTION.
       01  DFHCOMMAREA.
           05  WS-ACCOUNT-ID              PIC X(10).
           05  WS-ACCOUNT-NAME            PIC X(30).
           05  WS-ACCOUNT-BALANCE         PIC 9(7)V99.

       PROCEDURE DIVISION.
           IF WS-ACCOUNT-ID = "4"
               MOVE "John Doe"          TO WS-ACCOUNT-NAME
               MOVE 12345.67            TO WS-ACCOUNT-BALANCE
           ELSE
               MOVE "Jane Smith"        TO WS-ACCOUNT-NAME
               MOVE 54321.89            TO WS-ACCOUNT-BALANCE
           END-IF
           EXEC CICS RETURN END-EXEC.
