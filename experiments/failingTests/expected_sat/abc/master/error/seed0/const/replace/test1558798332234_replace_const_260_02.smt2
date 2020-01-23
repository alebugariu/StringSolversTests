(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "\n\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = \n
;tmp_str2 = \n
;actual status: not_implemented
;PC: @     0x7f664176eed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2542 (TID 0x7f66c0b5c740) from PID 0; stack trace: ***
;    @     0x7f66bf5ac4b0 (unknown)
;    @     0x7f664176eed6 dfaProject
;    @     0x7f66c057e7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f66c0610318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f66c0507f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f66c0554400 Vlab::SMT::Replace::accept()
;    @     0x7f66c04559ad Vlab::SMT::Visitor::visit()
;    @     0x7f66c05027f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f66c054f450 Vlab::SMT::Eq::accept()
;    @     0x7f66c04559ad Vlab::SMT::Visitor::visit()
;    @     0x7f66c0500878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f66c05415ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f66c053896e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f66c054db5c Vlab::SMT::And::accept()
;    @     0x7f66c04559ad Vlab::SMT::Visitor::visit()
;    @     0x7f66c0541a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f66c0537d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f66c054bd2a Vlab::SMT::Assert::accept()
;    @     0x7f66c04559ad Vlab::SMT::Visitor::visit()
;    @     0x7f66c055a699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f66c054b067 Vlab::SMT::Script::visit_children()
;    @     0x7f66c04559e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f66c0537b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f66c054b03c Vlab::SMT::Script::accept()
;    @     0x7f66c04559ad Vlab::SMT::Visitor::visit()
;    @     0x7f66c05377bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f66c043bb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f66bf597830 __libc_start_main
;    @           0x40de89 _start
