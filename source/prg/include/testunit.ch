#xcommand DEFINE SUITTEST <oTest>  ;
       => ;
   <oTest> := ThisTest( TTestUnit():New() )

#xcommand TEST <uAction,...>  ;
          [ DESCRIPTION <cDescription> ] ;
       => ;
          ThisTest():Assert( ProcName(), ProcLine(), <(uAction)>, {|This|<uAction>}, <cDescription> )

#xcommand SEPARADOR <cDescription>  ;
       => ;
          ThisTest():Separator( <cDescription> )


#xcommand ENDDEFINE   ;
       => ;
       ThisTest():End()

#xcommand SHOW RESULT   ;
       => ;
       ThisTest():Show()


