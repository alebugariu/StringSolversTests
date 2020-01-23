(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "a" "" tmp_str2) "2a"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7f0b28acaed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2486 (TID 0x7f0ba7eb8740) from PID 0; stack trace: ***
;    @     0x7f0ba69084b0 (unknown)
;    @     0x7f0b28acaed6 dfaProject
;    @     0x7f0ba78da7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f0ba796c318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f0ba7863f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f0ba78b0400 Vlab::SMT::Replace::accept()
;    @     0x7f0ba77b19ad Vlab::SMT::Visitor::visit()
;    @     0x7f0ba785e7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f0ba78ab450 Vlab::SMT::Eq::accept()
;    @     0x7f0ba77b19ad Vlab::SMT::Visitor::visit()
;    @     0x7f0ba785c878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f0ba789d5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f0ba789496e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f0ba78a9b5c Vlab::SMT::And::accept()
;    @     0x7f0ba77b19ad Vlab::SMT::Visitor::visit()
;    @     0x7f0ba789da82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0ba7893d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f0ba78a7d2a Vlab::SMT::Assert::accept()
;    @     0x7f0ba77b19ad Vlab::SMT::Visitor::visit()
;    @     0x7f0ba78b6699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f0ba78a7067 Vlab::SMT::Script::visit_children()
;    @     0x7f0ba77b19e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0ba7893b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f0ba78a703c Vlab::SMT::Script::accept()
;    @     0x7f0ba77b19ad Vlab::SMT::Visitor::visit()
;    @     0x7f0ba78937bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f0ba7797b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f0ba68f3830 __libc_start_main
;    @           0x40de89 _start
