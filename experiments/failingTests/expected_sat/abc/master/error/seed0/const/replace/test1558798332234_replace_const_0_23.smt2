(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "" "" tmp_str2) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;tmp_str3 = 
;actual status: not_implemented
;PC: @     0x7fafee327ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2617 (TID 0x7fb06d715740) from PID 0; stack trace: ***
;    @     0x7fb06c1654b0 (unknown)
;    @     0x7fafee327ed6 dfaProject
;    @     0x7fb06d1377ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fb06d1c9318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fb06d0c0f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fb06d10d400 Vlab::SMT::Replace::accept()
;    @     0x7fb06d00e9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb06d0bb7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fb06d108450 Vlab::SMT::Eq::accept()
;    @     0x7fb06d00e9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb06d0b9878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fb06d0fa5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fb06d0f196e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fb06d106b5c Vlab::SMT::And::accept()
;    @     0x7fb06d00e9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb06d0faa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb06d0f0d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fb06d104d2a Vlab::SMT::Assert::accept()
;    @     0x7fb06d00e9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb06d113699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fb06d104067 Vlab::SMT::Script::visit_children()
;    @     0x7fb06d00e9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fb06d0f0b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fb06d10403c Vlab::SMT::Script::accept()
;    @     0x7fb06d00e9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb06d0f07bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fb06cff4b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fb06c150830 __libc_start_main
;    @           0x40de89 _start
