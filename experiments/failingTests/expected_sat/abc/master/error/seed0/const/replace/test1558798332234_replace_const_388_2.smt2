(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "0" "" tmp_str2) "\n0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = \n
;actual status: not_implemented
;PC: @     0x7f2a6a3f2ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2430 (TID 0x7f2ae97e0740) from PID 0; stack trace: ***
;    @     0x7f2ae82304b0 (unknown)
;    @     0x7f2a6a3f2ed6 dfaProject
;    @     0x7f2ae92027ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f2ae9294318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f2ae918bf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f2ae91d8400 Vlab::SMT::Replace::accept()
;    @     0x7f2ae90d99ad Vlab::SMT::Visitor::visit()
;    @     0x7f2ae91867f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f2ae91d3450 Vlab::SMT::Eq::accept()
;    @     0x7f2ae90d99ad Vlab::SMT::Visitor::visit()
;    @     0x7f2ae9184878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f2ae91c55ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f2ae91bc96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f2ae91d1b5c Vlab::SMT::And::accept()
;    @     0x7f2ae90d99ad Vlab::SMT::Visitor::visit()
;    @     0x7f2ae91c5a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2ae91bbd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f2ae91cfd2a Vlab::SMT::Assert::accept()
;    @     0x7f2ae90d99ad Vlab::SMT::Visitor::visit()
;    @     0x7f2ae91de699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2ae91cf067 Vlab::SMT::Script::visit_children()
;    @     0x7f2ae90d99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f2ae91bbb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f2ae91cf03c Vlab::SMT::Script::accept()
;    @     0x7f2ae90d99ad Vlab::SMT::Visitor::visit()
;    @     0x7f2ae91bb7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f2ae90bfb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f2ae821b830 __libc_start_main
;    @           0x40de89 _start
