(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\"a\"" "" tmp_str2) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;tmp_str3 = "a"
;actual status: not_implemented
;PC: @     0x7f30c0c4eed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2337 (TID 0x7f314003c740) from PID 0; stack trace: ***
;    @     0x7f313ea8c4b0 (unknown)
;    @     0x7f30c0c4eed6 dfaProject
;    @     0x7f313fa5e7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f313faf0318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f313f9e7f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f313fa34400 Vlab::SMT::Replace::accept()
;    @     0x7f313f9359ad Vlab::SMT::Visitor::visit()
;    @     0x7f313f9e27f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f313fa2f450 Vlab::SMT::Eq::accept()
;    @     0x7f313f9359ad Vlab::SMT::Visitor::visit()
;    @     0x7f313f9e0878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f313fa215ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f313fa1896e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f313fa2db5c Vlab::SMT::And::accept()
;    @     0x7f313f9359ad Vlab::SMT::Visitor::visit()
;    @     0x7f313fa21a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f313fa17d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f313fa2bd2a Vlab::SMT::Assert::accept()
;    @     0x7f313f9359ad Vlab::SMT::Visitor::visit()
;    @     0x7f313fa3a699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f313fa2b067 Vlab::SMT::Script::visit_children()
;    @     0x7f313f9359e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f313fa17b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f313fa2b03c Vlab::SMT::Script::accept()
;    @     0x7f313f9359ad Vlab::SMT::Visitor::visit()
;    @     0x7f313fa177bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f313f91bb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f313ea77830 __libc_start_main
;    @           0x40de89 _start
