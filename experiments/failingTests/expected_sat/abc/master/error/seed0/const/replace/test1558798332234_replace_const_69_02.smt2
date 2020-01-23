(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "-1\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_str2 = -1
;actual status: not_implemented
;PC: @     0x7f02ee359ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2310 (TID 0x7f036d747740) from PID 0; stack trace: ***
;    @     0x7f036c1974b0 (unknown)
;    @     0x7f02ee359ed6 dfaProject
;    @     0x7f036d1697ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f036d1fb318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f036d0f2f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f036d13f400 Vlab::SMT::Replace::accept()
;    @     0x7f036d0409ad Vlab::SMT::Visitor::visit()
;    @     0x7f036d0ed7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f036d13a450 Vlab::SMT::Eq::accept()
;    @     0x7f036d0409ad Vlab::SMT::Visitor::visit()
;    @     0x7f036d0eb878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f036d12c5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f036d12396e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f036d138b5c Vlab::SMT::And::accept()
;    @     0x7f036d0409ad Vlab::SMT::Visitor::visit()
;    @     0x7f036d12ca82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f036d122d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f036d136d2a Vlab::SMT::Assert::accept()
;    @     0x7f036d0409ad Vlab::SMT::Visitor::visit()
;    @     0x7f036d145699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f036d136067 Vlab::SMT::Script::visit_children()
;    @     0x7f036d0409e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f036d122b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f036d13603c Vlab::SMT::Script::accept()
;    @     0x7f036d0409ad Vlab::SMT::Visitor::visit()
;    @     0x7f036d1227bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f036d026b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f036c182830 __libc_start_main
;    @           0x40de89 _start
