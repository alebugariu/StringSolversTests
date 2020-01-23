(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "00"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 0
;tmp_str2 = 0
;actual status: not_implemented
;PC: @     0x7fbb39d0ced6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2484 (TID 0x7fbbb90fa740) from PID 0; stack trace: ***
;    @     0x7fbbb7b4a4b0 (unknown)
;    @     0x7fbb39d0ced6 dfaProject
;    @     0x7fbbb8b1c7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fbbb8bae318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fbbb8aa5f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fbbb8af2400 Vlab::SMT::Replace::accept()
;    @     0x7fbbb89f39ad Vlab::SMT::Visitor::visit()
;    @     0x7fbbb8aa07f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fbbb8aed450 Vlab::SMT::Eq::accept()
;    @     0x7fbbb89f39ad Vlab::SMT::Visitor::visit()
;    @     0x7fbbb8a9e878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fbbb8adf5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fbbb8ad696e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fbbb8aebb5c Vlab::SMT::And::accept()
;    @     0x7fbbb89f39ad Vlab::SMT::Visitor::visit()
;    @     0x7fbbb8adfa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fbbb8ad5d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fbbb8ae9d2a Vlab::SMT::Assert::accept()
;    @     0x7fbbb89f39ad Vlab::SMT::Visitor::visit()
;    @     0x7fbbb8af8699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fbbb8ae9067 Vlab::SMT::Script::visit_children()
;    @     0x7fbbb89f39e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fbbb8ad5b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fbbb8ae903c Vlab::SMT::Script::accept()
;    @     0x7fbbb89f39ad Vlab::SMT::Visitor::visit()
;    @     0x7fbbb8ad57bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fbbb89d9b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fbbb7b35830 __libc_start_main
;    @           0x40de89 _start
