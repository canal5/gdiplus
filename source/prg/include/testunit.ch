#xcommand DEFINE SUITTEST <oTest>  ;
       => ;
   <oTest> := ThisTest( TTestUnit():New() )

#xcommand TEST <uAction,...>  ;
       => ;
          ThisTest():Assert( ProcName(), ProcLine(), <(uAction)>, {|This|<uAction>} )

#xcommand ENDDEFINE   ;
       => ;
       ThisTest():End()

#xcommand SHOW RESULT   ;
       => ;
       ThisTest():Show()


