(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "\n\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_str2 = \n
;actual status: not_implemented
;PC: @     0x7ffabfd15ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2609 (TID 0x7ffb3f103740) from PID 0; stack trace: ***
;    @     0x7ffb3db534b0 (unknown)
;    @     0x7ffabfd15ed6 dfaProject
;    @     0x7ffb3eb257ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7ffb3ebb7318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7ffb3eaaef05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7ffb3eafb400 Vlab::SMT::Replace::accept()
;    @     0x7ffb3e9fc9ad Vlab::SMT::Visitor::visit()
;    @     0x7ffb3eaa97f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7ffb3eaf6450 Vlab::SMT::Eq::accept()
;    @     0x7ffb3e9fc9ad Vlab::SMT::Visitor::visit()
;    @     0x7ffb3eaa7878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7ffb3eae85ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7ffb3eadf96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7ffb3eaf4b5c Vlab::SMT::And::accept()
;    @     0x7ffb3e9fc9ad Vlab::SMT::Visitor::visit()
;    @     0x7ffb3eae8a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ffb3eaded2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7ffb3eaf2d2a Vlab::SMT::Assert::accept()
;    @     0x7ffb3e9fc9ad Vlab::SMT::Visitor::visit()
;    @     0x7ffb3eb01699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7ffb3eaf2067 Vlab::SMT::Script::visit_children()
;    @     0x7ffb3e9fc9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ffb3eadeb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7ffb3eaf203c Vlab::SMT::Script::accept()
;    @     0x7ffb3e9fc9ad Vlab::SMT::Visitor::visit()
;    @     0x7ffb3eade7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7ffb3e9e2b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7ffb3db3e830 __libc_start_main
;    @           0x40de89 _start
