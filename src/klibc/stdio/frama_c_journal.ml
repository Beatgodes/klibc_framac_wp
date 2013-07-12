(* Frama-C journal generated at 19:24 the 08/07/2013 *)

exception Unreachable
exception Exception of string

(* Run the user commands *)
let run () =
  Dynamic.Parameter.Bool.set "-wp-rte" true;
  Dynamic.Parameter.Bool.set "-pp-annot" true;
  Dynamic.Parameter.StringList.set ""
    [ "clearerr.c";
      "fclose.c";
      "fdopen.c";
      "feof.c";
      "ferror.c";
      "fflush.c";
      "fgetc.c";
      "fgets.c";
      "fileno.c";
      "fopen.c";
      "fprintf.c";
      "fputc.c";
      "fputs.c";
      "fread.c";
      "fread2.c";
      "fseek.c";
      "ftell.c";
      "fwrite.c";
      "fwrite2.c";
      "lseek.c";
      "open.c";
      "rewind.c";
      "ungetc.c";
      "zalloc.c" ];
  File.init_from_cmdline ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "clearerr"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Dynamic.Parameter.StringList.set "-wp-model" [ "typed_cast" ];
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "fclose"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Dynamic.Parameter.StringList.set "" [  ];
  Dynamic.Parameter.StringList.set ""
    [ "clearerr.c";
      "fclose.c";
      "fdopen.c";
      "feof.c";
      "ferror.c";
      "fflush.c";
      "fgetc.c";
      "fgets.c";
      "fileno.c";
      "fopen.c";
      "fprintf.c";
      "fputc.c";
      "fputs.c";
      "fread.c";
      "fread2.c";
      "fseek.c";
      "ftell.c";
      "fwrite.c";
      "fwrite2.c";
      "lseek.c";
      "open.c";
      "rewind.c";
      "ungetc.c";
      "zalloc.c" ];
  File.init_from_cmdline ();
  !Db.RteGen.compute ();
  Dynamic.Parameter.StringList.set "-wp-prover" [ "why3:Z3:4.3.1" ];
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "clearerr"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "fclose"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "fdopen"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "feof"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "ferror"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "__fflush"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Dynamic.Parameter.StringList.set "-wp-prover" [ "why3:CVC3:2.4.1" ];
  Dynamic.Parameter.Int.set "-wp-par" 1;
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "__fflush"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Dynamic.Parameter.StringList.set "" [  ];
  Dynamic.Parameter.StringList.set ""
    [ "clearerr.c";
      "fclose.c";
      "fdopen.c";
      "feof.c";
      "ferror.c";
      "fflush.c";
      "fgetc.c";
      "fgets.c";
      "fileno.c";
      "fopen.c";
      "fprintf.c";
      "fputc.c";
      "fputs.c";
      "fread.c";
      "fread2.c";
      "fseek.c";
      "ftell.c";
      "fwrite.c";
      "fwrite2.c";
      "lseek.c";
      "open.c";
      "rewind.c";
      "ungetc.c";
      "zalloc.c" ];
  File.init_from_cmdline ();
  !Db.RteGen.compute ();
  Dynamic.Parameter.StringList.set "-wp-prover" [ "why3:Z3:4.3.1" ];
  Dynamic.Parameter.Int.set "-wp-par" 4;
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "__fflush"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "fflush"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "fgetc"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "fgets"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ~project:(Project.from_unique_name "default")
    ();
  Dynamic.Parameter.StringList.set "" [  ];
  Dynamic.Parameter.StringList.set ""
    [ "clearerr.c";
      "fclose.c";
      "fdopen.c";
      "feof.c";
      "ferror.c";
      "fflush.c";
      "fgetc.c";
      "fgets.c";
      "fileno.c";
      "fopen.c";
      "fprintf.c";
      "fputc.c";
      "fputs.c";
      "fread.c";
      "fread2.c";
      "fseek.c";
      "ftell.c";
      "fwrite.c";
      "fwrite2.c";
      "lseek.c";
      "open.c";
      "rewind.c";
      "ungetc.c";
      "zalloc.c" ];
  File.init_from_cmdline ();
  !Db.RteGen.compute ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "fgets"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "fileno"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "__parse_open_mode"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Dynamic.Parameter.StringList.set "" [  ];
  Dynamic.Parameter.StringList.set ""
    [ "clearerr.c";
      "fclose.c";
      "fdopen.c";
      "feof.c";
      "ferror.c";
      "fflush.c";
      "fgetc.c";
      "fgets.c";
      "fileno.c";
      "fopen.c";
      "fprintf.c";
      "fputc.c";
      "fputs.c";
      "fread.c";
      "fread2.c";
      "fseek.c";
      "ftell.c";
      "fwrite.c";
      "fwrite2.c";
      "lseek.c";
      "open.c";
      "rewind.c";
      "ungetc.c";
      "zalloc.c" ];
  File.init_from_cmdline ();
  !Db.RteGen.compute ();
  Dynamic.Parameter.StringList.set "-wp-prover" [ "why3:CVC3:2.4.1" ];
  Dynamic.Parameter.Int.set "-wp-par" 1;
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "__parse_open_mode"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Dynamic.Parameter.StringList.set "-wp-prover" [ "why3:Z3:4.3.1" ];
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "fopen"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "_fread"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "fseek"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "rewind"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  (* Applying dynamic functions "wp_compute_kf" of type
     Cil_datatype.Kf.t option -> string list -> string list -> unit *)
  Dynamic.get
  ~plugin:"Wp"
  "wp_compute_kf"
  (Datatype.func (Datatype.option Kernel_function.ty) (Datatype.func (Datatype.list Datatype.string) (Datatype.func (Datatype.list Datatype.string) Datatype.unit)))
    (Some (Globals.Functions.find_by_name "ungetc"))
    [  ]
    [  ];
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  Project.clear
    ~selection:(State_selection.of_list
                  [ State.get "Report.print_once";
                    State.get "Property_status.Valid_cycles";
                    State.get "Property_status.Hypotheses";
                    State.get "Consolidation graph";
                    State.get "Consolidated_status";
                    State.get "Call Preconditions Generated" ])
    ();
  ()

(* Main *)
let main () =
  Journal.keep_file "frama_c_journal.ml";
  try run ()
  with
  | Unreachable -> Kernel.fatal "Journal reachs an assumed dead code" 
  | Exception s -> Kernel.log "Journal re-raised the exception %S" s
  | exn ->
    Kernel.fatal
      "Journal raised an unexpected exception: %s"
      (Printexc.to_string exn)

(* Registering *)
let main : unit -> unit =
  Dynamic.register
    ~plugin:"Frama_c_journal"
    "main"
    (Datatype.func Datatype.unit Datatype.unit)
    ~journalize:false
    main

(* Hooking *)
let () = Cmdline.run_after_loading_stage main; Cmdline.is_going_to_load ()
