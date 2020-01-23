(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\"a\"" "" tmp_str2) "\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;PC: @     0x7f943dff9ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2516 (TID 0x7f94bd3e7740) from PID 0; stack trace: ***
;    @     0x7f94bbe374b0 (unknown)
;    @     0x7f943dff9ed6 dfaProject
;    @     0x7f94bce097ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f94bce9b318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f94bcd92f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f94bcddf400 Vlab::SMT::Replace::accept()
;    @     0x7f94bcce09ad Vlab::SMT::Visitor::visit()
;    @     0x7f94bcd8d7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f94bcdda450 Vlab::SMT::Eq::accept()
;    @     0x7f94bcce09ad Vlab::SMT::Visitor::visit()
;    @     0x7f94bcd8b878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f94bcdcc5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f94bcdc396e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f94bcdd8b5c Vlab::SMT::And::accept()
;    @     0x7f94bcce09ad Vlab::SMT::Visitor::visit()
;    @     0x7f94bcdcca82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f94bcdc2d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f94bcdd6d2a Vlab::SMT::Assert::accept()
;    @     0x7f94bcce09ad Vlab::SMT::Visitor::visit()
;    @     0x7f94bcde5699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f94bcdd6067 Vlab::SMT::Script::visit_children()
;    @     0x7f94bcce09e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f94bcdc2b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f94bcdd603c Vlab::SMT::Script::accept()
;    @     0x7f94bcce09ad Vlab::SMT::Visitor::visit()
;    @     0x7f94bcdc27bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f94bccc6b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f94bbe22830 __libc_start_main
;    @           0x40de89 _start
