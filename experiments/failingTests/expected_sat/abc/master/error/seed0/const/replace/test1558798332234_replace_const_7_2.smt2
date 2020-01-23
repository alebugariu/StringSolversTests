(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "" "" tmp_str2) "2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7f5719cd8ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2364 (TID 0x7f57990c6740) from PID 0; stack trace: ***
;    @     0x7f5797b164b0 (unknown)
;    @     0x7f5719cd8ed6 dfaProject
;    @     0x7f5798ae87ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f5798b7a318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f5798a71f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f5798abe400 Vlab::SMT::Replace::accept()
;    @     0x7f57989bf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f5798a6c7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f5798ab9450 Vlab::SMT::Eq::accept()
;    @     0x7f57989bf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f5798a6a878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f5798aab5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f5798aa296e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f5798ab7b5c Vlab::SMT::And::accept()
;    @     0x7f57989bf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f5798aaba82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5798aa1d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f5798ab5d2a Vlab::SMT::Assert::accept()
;    @     0x7f57989bf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f5798ac4699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5798ab5067 Vlab::SMT::Script::visit_children()
;    @     0x7f57989bf9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5798aa1b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f5798ab503c Vlab::SMT::Script::accept()
;    @     0x7f57989bf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f5798aa17bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f57989a5b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f5797b01830 __libc_start_main
;    @           0x40de89 _start
