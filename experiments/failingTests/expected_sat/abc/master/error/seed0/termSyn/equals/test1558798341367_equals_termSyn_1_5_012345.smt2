(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (= (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1)) (= tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:37.942632  2913 UnaryAutomaton.cpp:325] 1
;I0818 17:36:37.942656  2913 UnaryAutomaton.cpp:326] 1
;I0818 17:36:37.942663  2913 UnaryAutomaton.cpp:327] 1
;F0818 17:36:37.949785  2913 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f8a01b76f5d  google::LogMessage::Fail()
;    @     0x7f8a01b79513  google::LogMessage::SendToLog()
;    @     0x7f8a01b76aeb  google::LogMessage::Flush()
;    @     0x7f8a01b7845e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f8a0219aa26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f8a021e8992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f8a020e79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8a02199762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f8a021e5df0  Vlab::SMT::ToString::accept()
;    @     0x7f8a020e79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8a021947f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f8a021e1450  Vlab::SMT::Eq::accept()
;    @     0x7f8a020e79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8a02192878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f8a021d35ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f8a021ca96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f8a021dfb5c  Vlab::SMT::And::accept()
;    @     0x7f8a020e79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8a021d3a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8a021c9d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f8a021ddd2a  Vlab::SMT::Assert::accept()
;    @     0x7f8a020e79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8a021ec699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f8a021dd067  Vlab::SMT::Script::visit_children()
;    @     0x7f8a020e79e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f8a021c9b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f8a021dd03c  Vlab::SMT::Script::accept()
;    @     0x7f8a020e79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8a021c97bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f8a020cdb84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f8a01229830  __libc_start_main
