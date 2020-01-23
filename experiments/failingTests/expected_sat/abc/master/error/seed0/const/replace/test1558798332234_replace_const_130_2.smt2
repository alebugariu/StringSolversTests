(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "a" "" tmp_str2) "aa"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7fceb4634ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2330 (TID 0x7fcf33a22740) from PID 0; stack trace: ***
;    @     0x7fcf324724b0 (unknown)
;    @     0x7fceb4634ed6 dfaProject
;    @     0x7fcf334447ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fcf334d6318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fcf333cdf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fcf3341a400 Vlab::SMT::Replace::accept()
;    @     0x7fcf3331b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fcf333c87f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fcf33415450 Vlab::SMT::Eq::accept()
;    @     0x7fcf3331b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fcf333c6878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fcf334075ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fcf333fe96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fcf33413b5c Vlab::SMT::And::accept()
;    @     0x7fcf3331b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fcf33407a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fcf333fdd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fcf33411d2a Vlab::SMT::Assert::accept()
;    @     0x7fcf3331b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fcf33420699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fcf33411067 Vlab::SMT::Script::visit_children()
;    @     0x7fcf3331b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fcf333fdb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fcf3341103c Vlab::SMT::Script::accept()
;    @     0x7fcf3331b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fcf333fd7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fcf33301b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fcf3245d830 __libc_start_main
;    @           0x40de89 _start
