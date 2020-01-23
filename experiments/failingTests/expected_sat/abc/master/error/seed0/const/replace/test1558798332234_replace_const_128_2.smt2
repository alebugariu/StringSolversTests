(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "a" "" tmp_str2) "a"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;PC: @     0x7f43e68c6ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2597 (TID 0x7f4465cb4740) from PID 0; stack trace: ***
;    @     0x7f44647044b0 (unknown)
;    @     0x7f43e68c6ed6 dfaProject
;    @     0x7f44656d67ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f4465768318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f446565ff05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f44656ac400 Vlab::SMT::Replace::accept()
;    @     0x7f44655ad9ad Vlab::SMT::Visitor::visit()
;    @     0x7f446565a7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f44656a7450 Vlab::SMT::Eq::accept()
;    @     0x7f44655ad9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4465658878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f44656995ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f446569096e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f44656a5b5c Vlab::SMT::And::accept()
;    @     0x7f44655ad9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4465699a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f446568fd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f44656a3d2a Vlab::SMT::Assert::accept()
;    @     0x7f44655ad9ad Vlab::SMT::Visitor::visit()
;    @     0x7f44656b2699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f44656a3067 Vlab::SMT::Script::visit_children()
;    @     0x7f44655ad9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f446568fb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f44656a303c Vlab::SMT::Script::accept()
;    @     0x7f44655ad9ad Vlab::SMT::Visitor::visit()
;    @     0x7f446568f7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f4465593b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f44646ef830 __libc_start_main
;    @           0x40de89 _start
