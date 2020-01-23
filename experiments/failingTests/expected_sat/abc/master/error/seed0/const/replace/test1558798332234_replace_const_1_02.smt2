(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str2 = "a"
;actual status: not_implemented
;PC: @     0x7f6eed1c5ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2565 (TID 0x7f6f6c5b3740) from PID 0; stack trace: ***
;    @     0x7f6f6b0034b0 (unknown)
;    @     0x7f6eed1c5ed6 dfaProject
;    @     0x7f6f6bfd57ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f6f6c067318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f6f6bf5ef05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f6f6bfab400 Vlab::SMT::Replace::accept()
;    @     0x7f6f6beac9ad Vlab::SMT::Visitor::visit()
;    @     0x7f6f6bf597f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f6f6bfa6450 Vlab::SMT::Eq::accept()
;    @     0x7f6f6beac9ad Vlab::SMT::Visitor::visit()
;    @     0x7f6f6bf57878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f6f6bf985ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f6f6bf8f96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f6f6bfa4b5c Vlab::SMT::And::accept()
;    @     0x7f6f6beac9ad Vlab::SMT::Visitor::visit()
;    @     0x7f6f6bf98a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6f6bf8ed2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f6f6bfa2d2a Vlab::SMT::Assert::accept()
;    @     0x7f6f6beac9ad Vlab::SMT::Visitor::visit()
;    @     0x7f6f6bfb1699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f6f6bfa2067 Vlab::SMT::Script::visit_children()
;    @     0x7f6f6beac9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f6f6bf8eb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f6f6bfa203c Vlab::SMT::Script::accept()
;    @     0x7f6f6beac9ad Vlab::SMT::Visitor::visit()
;    @     0x7f6f6bf8e7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f6f6be92b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f6f6afee830 __libc_start_main
;    @           0x40de89 _start
