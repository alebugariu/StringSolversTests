(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "-1" "" tmp_str2) "\"a\"-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = "a"
;actual status: not_implemented
;PC: @     0x7f46269f9ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2513 (TID 0x7f46a5de7740) from PID 0; stack trace: ***
;    @     0x7f46a48374b0 (unknown)
;    @     0x7f46269f9ed6 dfaProject
;    @     0x7f46a58097ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f46a589b318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f46a5792f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f46a57df400 Vlab::SMT::Replace::accept()
;    @     0x7f46a56e09ad Vlab::SMT::Visitor::visit()
;    @     0x7f46a578d7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f46a57da450 Vlab::SMT::Eq::accept()
;    @     0x7f46a56e09ad Vlab::SMT::Visitor::visit()
;    @     0x7f46a578b878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f46a57cc5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f46a57c396e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f46a57d8b5c Vlab::SMT::And::accept()
;    @     0x7f46a56e09ad Vlab::SMT::Visitor::visit()
;    @     0x7f46a57cca82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f46a57c2d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f46a57d6d2a Vlab::SMT::Assert::accept()
;    @     0x7f46a56e09ad Vlab::SMT::Visitor::visit()
;    @     0x7f46a57e5699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f46a57d6067 Vlab::SMT::Script::visit_children()
;    @     0x7f46a56e09e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f46a57c2b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f46a57d603c Vlab::SMT::Script::accept()
;    @     0x7f46a56e09ad Vlab::SMT::Visitor::visit()
;    @     0x7f46a57c27bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f46a56c6b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f46a4822830 __libc_start_main
;    @           0x40de89 _start
