(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str2 = -1
;actual status: not_implemented
;PC: @     0x7f006d108ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2527 (TID 0x7f00ec4f6740) from PID 0; stack trace: ***
;    @     0x7f00eaf464b0 (unknown)
;    @     0x7f006d108ed6 dfaProject
;    @     0x7f00ebf187ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f00ebfaa318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f00ebea1f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f00ebeee400 Vlab::SMT::Replace::accept()
;    @     0x7f00ebdef9ad Vlab::SMT::Visitor::visit()
;    @     0x7f00ebe9c7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f00ebee9450 Vlab::SMT::Eq::accept()
;    @     0x7f00ebdef9ad Vlab::SMT::Visitor::visit()
;    @     0x7f00ebe9a878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f00ebedb5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f00ebed296e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f00ebee7b5c Vlab::SMT::And::accept()
;    @     0x7f00ebdef9ad Vlab::SMT::Visitor::visit()
;    @     0x7f00ebedba82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f00ebed1d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f00ebee5d2a Vlab::SMT::Assert::accept()
;    @     0x7f00ebdef9ad Vlab::SMT::Visitor::visit()
;    @     0x7f00ebef4699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f00ebee5067 Vlab::SMT::Script::visit_children()
;    @     0x7f00ebdef9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f00ebed1b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f00ebee503c Vlab::SMT::Script::accept()
;    @     0x7f00ebdef9ad Vlab::SMT::Visitor::visit()
;    @     0x7f00ebed17bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f00ebdd5b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f00eaf31830 __libc_start_main
;    @           0x40de89 _start
