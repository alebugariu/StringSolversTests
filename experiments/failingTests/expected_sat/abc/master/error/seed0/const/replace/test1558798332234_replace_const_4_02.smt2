(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str2 = \n
;actual status: not_implemented
;PC: @     0x7f510d7f1ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2572 (TID 0x7f518cbdf740) from PID 0; stack trace: ***
;    @     0x7f518b62f4b0 (unknown)
;    @     0x7f510d7f1ed6 dfaProject
;    @     0x7f518c6017ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f518c693318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f518c58af05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f518c5d7400 Vlab::SMT::Replace::accept()
;    @     0x7f518c4d89ad Vlab::SMT::Visitor::visit()
;    @     0x7f518c5857f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f518c5d2450 Vlab::SMT::Eq::accept()
;    @     0x7f518c4d89ad Vlab::SMT::Visitor::visit()
;    @     0x7f518c583878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f518c5c45ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f518c5bb96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f518c5d0b5c Vlab::SMT::And::accept()
;    @     0x7f518c4d89ad Vlab::SMT::Visitor::visit()
;    @     0x7f518c5c4a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f518c5bad2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f518c5ced2a Vlab::SMT::Assert::accept()
;    @     0x7f518c4d89ad Vlab::SMT::Visitor::visit()
;    @     0x7f518c5dd699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f518c5ce067 Vlab::SMT::Script::visit_children()
;    @     0x7f518c4d89e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f518c5bab35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f518c5ce03c Vlab::SMT::Script::accept()
;    @     0x7f518c4d89ad Vlab::SMT::Visitor::visit()
;    @     0x7f518c5ba7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f518c4beb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f518b61a830 __libc_start_main
;    @           0x40de89 _start
