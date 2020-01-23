(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "20"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 0
;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7f1f4e9f3ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2545 (TID 0x7f1fcdde1740) from PID 0; stack trace: ***
;    @     0x7f1fcc8314b0 (unknown)
;    @     0x7f1f4e9f3ed6 dfaProject
;    @     0x7f1fcd8037ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f1fcd895318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f1fcd78cf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f1fcd7d9400 Vlab::SMT::Replace::accept()
;    @     0x7f1fcd6da9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1fcd7877f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f1fcd7d4450 Vlab::SMT::Eq::accept()
;    @     0x7f1fcd6da9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1fcd785878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f1fcd7c65ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f1fcd7bd96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f1fcd7d2b5c Vlab::SMT::And::accept()
;    @     0x7f1fcd6da9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1fcd7c6a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f1fcd7bcd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f1fcd7d0d2a Vlab::SMT::Assert::accept()
;    @     0x7f1fcd6da9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1fcd7df699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1fcd7d0067 Vlab::SMT::Script::visit_children()
;    @     0x7f1fcd6da9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1fcd7bcb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f1fcd7d003c Vlab::SMT::Script::accept()
;    @     0x7f1fcd6da9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1fcd7bc7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f1fcd6c0b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f1fcc81c830 __libc_start_main
;    @           0x40de89 _start
