(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.at tmp_str0 tmp_int1) (str.replace tmp_str0 tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:13.117753  3215 UnaryAutomaton.cpp:325] 1
;I0818 17:37:13.121495  3215 UnaryAutomaton.cpp:326] 1
;I0818 17:37:13.121548  3215 UnaryAutomaton.cpp:327] 1
;F0818 17:37:13.130494  3215 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fa489766f5d  google::LogMessage::Fail()
;    @     0x7fa489769513  google::LogMessage::SendToLog()
;    @     0x7fa489766aeb  google::LogMessage::Flush()
;    @     0x7fa48976845e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fa489d8aa26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fa489dd8992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fa489cd79ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa489d89762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fa489dd5df0  Vlab::SMT::ToString::accept()
;    @     0x7fa489cd79ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa489d847f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fa489dd1450  Vlab::SMT::Eq::accept()
;    @     0x7fa489cd79ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa489d82878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fa489dc35ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fa489dba96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa489dcfb5c  Vlab::SMT::And::accept()
;    @     0x7fa489cd79ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa489dc3a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa489db9d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa489dcdd2a  Vlab::SMT::Assert::accept()
;    @     0x7fa489cd79ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa489ddc699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa489dcd067  Vlab::SMT::Script::visit_children()
;    @     0x7fa489cd79e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fa489db9b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fa489dcd03c  Vlab::SMT::Script::accept()
;    @     0x7fa489cd79ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa489db97bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7fa489cbdb84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7fa488e19830  __libc_start_main
