(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.at tmp_str0 tmp_int1) (str.to.int tmp_str0) (str.len tmp_str0)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:40.849803  2944 UnaryAutomaton.cpp:325] 1
;I0818 17:36:40.849840  2944 UnaryAutomaton.cpp:326] 1
;I0818 17:36:40.849849  2944 UnaryAutomaton.cpp:327] 1
;F0818 17:36:40.854705  2944 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7faf5ce0cf5d  google::LogMessage::Fail()
;    @     0x7faf5ce0f513  google::LogMessage::SendToLog()
;    @     0x7faf5ce0caeb  google::LogMessage::Flush()
;    @     0x7faf5ce0e45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7faf5d430a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7faf5d47e992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7faf5d37d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf5d42f762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7faf5d47bdf0  Vlab::SMT::ToString::accept()
;    @     0x7faf5d37d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf5d42a7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7faf5d477450  Vlab::SMT::Eq::accept()
;    @     0x7faf5d37d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf5d428878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7faf5d4695ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7faf5d46096e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7faf5d475b5c  Vlab::SMT::And::accept()
;    @     0x7faf5d37d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf5d469a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7faf5d45fd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7faf5d473d2a  Vlab::SMT::Assert::accept()
;    @     0x7faf5d37d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf5d482699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7faf5d473067  Vlab::SMT::Script::visit_children()
;    @     0x7faf5d37d9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7faf5d45fb35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7faf5d47303c  Vlab::SMT::Script::accept()
;    @     0x7faf5d37d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf5d45f7bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7faf5d363b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7faf5c4bf830  __libc_start_main
