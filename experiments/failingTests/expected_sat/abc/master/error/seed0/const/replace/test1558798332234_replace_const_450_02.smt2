(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "a2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 2
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7fcd20cdeed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2496 (TID 0x7fcda00cc740) from PID 0; stack trace: ***
;    @     0x7fcd9eb1c4b0 (unknown)
;    @     0x7fcd20cdeed6 dfaProject
;    @     0x7fcd9faee7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fcd9fb80318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fcd9fa77f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fcd9fac4400 Vlab::SMT::Replace::accept()
;    @     0x7fcd9f9c59ad Vlab::SMT::Visitor::visit()
;    @     0x7fcd9fa727f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fcd9fabf450 Vlab::SMT::Eq::accept()
;    @     0x7fcd9f9c59ad Vlab::SMT::Visitor::visit()
;    @     0x7fcd9fa70878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fcd9fab15ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fcd9faa896e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fcd9fabdb5c Vlab::SMT::And::accept()
;    @     0x7fcd9f9c59ad Vlab::SMT::Visitor::visit()
;    @     0x7fcd9fab1a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fcd9faa7d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fcd9fabbd2a Vlab::SMT::Assert::accept()
;    @     0x7fcd9f9c59ad Vlab::SMT::Visitor::visit()
;    @     0x7fcd9faca699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fcd9fabb067 Vlab::SMT::Script::visit_children()
;    @     0x7fcd9f9c59e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fcd9faa7b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fcd9fabb03c Vlab::SMT::Script::accept()
;    @     0x7fcd9f9c59ad Vlab::SMT::Visitor::visit()
;    @     0x7fcd9faa77bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fcd9f9abb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fcd9eb07830 __libc_start_main
;    @           0x40de89 _start
