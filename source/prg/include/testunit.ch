#xcommand DEFINE SUITTEST <oTest>  ;
       => ;
   <oTest> := ThisTest( TTestUnit():New() )

#xcommand TEST <uAction,...>  ;
          [ DESCRIPTION <cDescription> ] ;
          [ SAMPLE <uDisplay> ];
       => ;
          ThisTest():Assert( ProcName(), ProcLine(), <(uAction)>, \{|This|<uAction>\}, <cDescription>, [\{ |This| <uDisplay> \}] )

#xcommand SEPARADOR <cDescription>  ;
       => ;
          ThisTest():Separator( <cDescription> )


#xcommand ENDDEFINE   ;
       => ;
       ThisTest():End()

#xcommand SHOW RESULT   ;
       => ;
       ThisTest():Show()


