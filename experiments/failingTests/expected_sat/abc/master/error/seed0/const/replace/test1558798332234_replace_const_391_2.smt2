(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "0" "" tmp_str2) "20"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7f4c23ce6ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2611 (TID 0x7f4ca30d4740) from PID 0; stack trace: ***
;    @     0x7f4ca1b244b0 (unknown)
;    @     0x7f4c23ce6ed6 dfaProject
;    @     0x7f4ca2af67ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f4ca2b88318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f4ca2a7ff05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f4ca2acc400 Vlab::SMT::Replace::accept()
;    @     0x7f4ca29cd9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4ca2a7a7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f4ca2ac7450 Vlab::SMT::Eq::accept()
;    @     0x7f4ca29cd9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4ca2a78878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f4ca2ab95ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f4ca2ab096e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f4ca2ac5b5c Vlab::SMT::And::accept()
;    @     0x7f4ca29cd9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4ca2ab9a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f4ca2aafd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f4ca2ac3d2a Vlab::SMT::Assert::accept()
;    @     0x7f4ca29cd9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4ca2ad2699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4ca2ac3067 Vlab::SMT::Script::visit_children()
;    @     0x7f4ca29cd9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4ca2aafb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f4ca2ac303c Vlab::SMT::Script::accept()
;    @     0x7f4ca29cd9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4ca2aaf7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f4ca29b3b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f4ca1b0f830 __libc_start_main
;    @           0x40de89 _start
