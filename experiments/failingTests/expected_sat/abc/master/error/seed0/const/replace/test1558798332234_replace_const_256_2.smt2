(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\n" "" tmp_str2) "\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;PC: @     0x7f8ffc772ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2623 (TID 0x7f907bb60740) from PID 0; stack trace: ***
;    @     0x7f907a5b04b0 (unknown)
;    @     0x7f8ffc772ed6 dfaProject
;    @     0x7f907b5827ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f907b614318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f907b50bf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f907b558400 Vlab::SMT::Replace::accept()
;    @     0x7f907b4599ad Vlab::SMT::Visitor::visit()
;    @     0x7f907b5067f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f907b553450 Vlab::SMT::Eq::accept()
;    @     0x7f907b4599ad Vlab::SMT::Visitor::visit()
;    @     0x7f907b504878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f907b5455ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f907b53c96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f907b551b5c Vlab::SMT::And::accept()
;    @     0x7f907b4599ad Vlab::SMT::Visitor::visit()
;    @     0x7f907b545a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f907b53bd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f907b54fd2a Vlab::SMT::Assert::accept()
;    @     0x7f907b4599ad Vlab::SMT::Visitor::visit()
;    @     0x7f907b55e699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f907b54f067 Vlab::SMT::Script::visit_children()
;    @     0x7f907b4599e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f907b53bb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f907b54f03c Vlab::SMT::Script::accept()
;    @     0x7f907b4599ad Vlab::SMT::Visitor::visit()
;    @     0x7f907b53b7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f907b43fb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f907a59b830 __libc_start_main
;    @           0x40de89 _start
