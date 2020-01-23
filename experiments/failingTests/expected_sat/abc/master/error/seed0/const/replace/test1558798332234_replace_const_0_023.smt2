(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str2 = 
;tmp_str3 = 
;actual status: not_implemented
;PC: @     0x7f53e65baed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2592 (TID 0x7f54659a8740) from PID 0; stack trace: ***
;    @     0x7f54643f84b0 (unknown)
;    @     0x7f53e65baed6 dfaProject
;    @     0x7f54653ca7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f546545c318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f5465353f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f54653a0400 Vlab::SMT::Replace::accept()
;    @     0x7f54652a19ad Vlab::SMT::Visitor::visit()
;    @     0x7f546534e7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f546539b450 Vlab::SMT::Eq::accept()
;    @     0x7f54652a19ad Vlab::SMT::Visitor::visit()
;    @     0x7f546534c878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f546538d5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f546538496e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f5465399b5c Vlab::SMT::And::accept()
;    @     0x7f54652a19ad Vlab::SMT::Visitor::visit()
;    @     0x7f546538da82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5465383d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f5465397d2a Vlab::SMT::Assert::accept()
;    @     0x7f54652a19ad Vlab::SMT::Visitor::visit()
;    @     0x7f54653a6699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5465397067 Vlab::SMT::Script::visit_children()
;    @     0x7f54652a19e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5465383b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f546539703c Vlab::SMT::Script::accept()
;    @     0x7f54652a19ad Vlab::SMT::Visitor::visit()
;    @     0x7f54653837bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f5465287b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f54643e3830 __libc_start_main
;    @           0x40de89 _start
