(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\n" "" tmp_str2) "-1\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = -1
;actual status: not_implemented
;PC: @     0x7f94b95c9ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2638 (TID 0x7f95389b7740) from PID 0; stack trace: ***
;    @     0x7f95374074b0 (unknown)
;    @     0x7f94b95c9ed6 dfaProject
;    @     0x7f95383d97ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f953846b318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f9538362f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f95383af400 Vlab::SMT::Replace::accept()
;    @     0x7f95382b09ad Vlab::SMT::Visitor::visit()
;    @     0x7f953835d7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f95383aa450 Vlab::SMT::Eq::accept()
;    @     0x7f95382b09ad Vlab::SMT::Visitor::visit()
;    @     0x7f953835b878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f953839c5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f953839396e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f95383a8b5c Vlab::SMT::And::accept()
;    @     0x7f95382b09ad Vlab::SMT::Visitor::visit()
;    @     0x7f953839ca82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9538392d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f95383a6d2a Vlab::SMT::Assert::accept()
;    @     0x7f95382b09ad Vlab::SMT::Visitor::visit()
;    @     0x7f95383b5699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f95383a6067 Vlab::SMT::Script::visit_children()
;    @     0x7f95382b09e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f9538392b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f95383a603c Vlab::SMT::Script::accept()
;    @     0x7f95382b09ad Vlab::SMT::Visitor::visit()
;    @     0x7f95383927bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f9538296b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f95373f2830 __libc_start_main
;    @           0x40de89 _start
