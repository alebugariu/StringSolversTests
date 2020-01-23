(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "2-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = -1
;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7f7d222dded6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2248 (TID 0x7f7da16cb740) from PID 0; stack trace: ***
;    @     0x7f7da011b4b0 (unknown)
;    @     0x7f7d222dded6 dfaProject
;    @     0x7f7da10ed7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f7da117f318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f7da1076f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f7da10c3400 Vlab::SMT::Replace::accept()
;    @     0x7f7da0fc49ad Vlab::SMT::Visitor::visit()
;    @     0x7f7da10717f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f7da10be450 Vlab::SMT::Eq::accept()
;    @     0x7f7da0fc49ad Vlab::SMT::Visitor::visit()
;    @     0x7f7da106f878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f7da10b05ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f7da10a796e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f7da10bcb5c Vlab::SMT::And::accept()
;    @     0x7f7da0fc49ad Vlab::SMT::Visitor::visit()
;    @     0x7f7da10b0a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f7da10a6d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f7da10bad2a Vlab::SMT::Assert::accept()
;    @     0x7f7da0fc49ad Vlab::SMT::Visitor::visit()
;    @     0x7f7da10c9699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7da10ba067 Vlab::SMT::Script::visit_children()
;    @     0x7f7da0fc49e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7da10a6b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f7da10ba03c Vlab::SMT::Script::accept()
;    @     0x7f7da0fc49ad Vlab::SMT::Visitor::visit()
;    @     0x7f7da10a67bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f7da0faab84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f7da0106830 __libc_start_main
;    @           0x40de89 _start
