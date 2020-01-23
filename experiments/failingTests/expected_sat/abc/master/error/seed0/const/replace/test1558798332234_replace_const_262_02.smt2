(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "0\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = \n
;tmp_str2 = 0
;actual status: not_implemented
;PC: @     0x7fa177ba8ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2293 (TID 0x7fa1f6f96740) from PID 0; stack trace: ***
;    @     0x7fa1f59e64b0 (unknown)
;    @     0x7fa177ba8ed6 dfaProject
;    @     0x7fa1f69b87ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fa1f6a4a318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fa1f6941f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fa1f698e400 Vlab::SMT::Replace::accept()
;    @     0x7fa1f688f9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa1f693c7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fa1f6989450 Vlab::SMT::Eq::accept()
;    @     0x7fa1f688f9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa1f693a878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fa1f697b5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fa1f697296e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa1f6987b5c Vlab::SMT::And::accept()
;    @     0x7fa1f688f9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa1f697ba82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa1f6971d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa1f6985d2a Vlab::SMT::Assert::accept()
;    @     0x7fa1f688f9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa1f6994699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa1f6985067 Vlab::SMT::Script::visit_children()
;    @     0x7fa1f688f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fa1f6971b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fa1f698503c Vlab::SMT::Script::accept()
;    @     0x7fa1f688f9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa1f69717bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fa1f6875b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fa1f59d1830 __libc_start_main
;    @           0x40de89 _start
