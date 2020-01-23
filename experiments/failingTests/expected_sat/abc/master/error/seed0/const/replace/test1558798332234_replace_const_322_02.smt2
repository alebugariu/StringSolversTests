(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "a-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = -1
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f86afc4aed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2579 (TID 0x7f872f038740) from PID 0; stack trace: ***
;    @     0x7f872da884b0 (unknown)
;    @     0x7f86afc4aed6 dfaProject
;    @     0x7f872ea5a7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f872eaec318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f872e9e3f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f872ea30400 Vlab::SMT::Replace::accept()
;    @     0x7f872e9319ad Vlab::SMT::Visitor::visit()
;    @     0x7f872e9de7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f872ea2b450 Vlab::SMT::Eq::accept()
;    @     0x7f872e9319ad Vlab::SMT::Visitor::visit()
;    @     0x7f872e9dc878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f872ea1d5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f872ea1496e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f872ea29b5c Vlab::SMT::And::accept()
;    @     0x7f872e9319ad Vlab::SMT::Visitor::visit()
;    @     0x7f872ea1da82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f872ea13d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f872ea27d2a Vlab::SMT::Assert::accept()
;    @     0x7f872e9319ad Vlab::SMT::Visitor::visit()
;    @     0x7f872ea36699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f872ea27067 Vlab::SMT::Script::visit_children()
;    @     0x7f872e9319e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f872ea13b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f872ea2703c Vlab::SMT::Script::accept()
;    @     0x7f872e9319ad Vlab::SMT::Visitor::visit()
;    @     0x7f872ea137bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f872e917b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f872da73830 __libc_start_main
;    @           0x40de89 _start
