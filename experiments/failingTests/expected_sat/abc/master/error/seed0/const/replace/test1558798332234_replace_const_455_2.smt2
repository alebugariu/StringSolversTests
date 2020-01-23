(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "2" "" tmp_str2) "22"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7f4c1ade3ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2584 (TID 0x7f4c9a1d1740) from PID 0; stack trace: ***
;    @     0x7f4c98c214b0 (unknown)
;    @     0x7f4c1ade3ed6 dfaProject
;    @     0x7f4c99bf37ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f4c99c85318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f4c99b7cf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f4c99bc9400 Vlab::SMT::Replace::accept()
;    @     0x7f4c99aca9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4c99b777f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f4c99bc4450 Vlab::SMT::Eq::accept()
;    @     0x7f4c99aca9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4c99b75878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f4c99bb65ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f4c99bad96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f4c99bc2b5c Vlab::SMT::And::accept()
;    @     0x7f4c99aca9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4c99bb6a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f4c99bacd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f4c99bc0d2a Vlab::SMT::Assert::accept()
;    @     0x7f4c99aca9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4c99bcf699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4c99bc0067 Vlab::SMT::Script::visit_children()
;    @     0x7f4c99aca9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4c99bacb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f4c99bc003c Vlab::SMT::Script::accept()
;    @     0x7f4c99aca9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4c99bac7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f4c99ab0b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f4c98c0c830 __libc_start_main
;    @           0x40de89 _start
