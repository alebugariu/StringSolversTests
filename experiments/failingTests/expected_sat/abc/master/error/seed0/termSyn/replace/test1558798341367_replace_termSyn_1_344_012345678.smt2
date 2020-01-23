(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.substr tmp_str0 tmp_int1 tmp_int1) (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1)) (str.at tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:13.659025  3221 UnaryAutomaton.cpp:325] 1
;I0818 17:37:13.659055  3221 UnaryAutomaton.cpp:326] 1
;I0818 17:37:13.659065  3221 UnaryAutomaton.cpp:327] 1
;F0818 17:37:13.729970  3221 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7faf0be6ef5d  google::LogMessage::Fail()
;    @     0x7faf0be71513  google::LogMessage::SendToLog()
;    @     0x7faf0be6eaeb  google::LogMessage::Flush()
;    @     0x7faf0be7045e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7faf0c492a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7faf0c4e0992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7faf0c3df9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf0c491762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7faf0c4dddf0  Vlab::SMT::ToString::accept()
;    @     0x7faf0c3df9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf0c491f86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7faf0c4de400  Vlab::SMT::Replace::accept()
;    @     0x7faf0c3df9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf0c48c7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7faf0c4d9450  Vlab::SMT::Eq::accept()
;    @     0x7faf0c3df9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf0c48a878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7faf0c4cb5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7faf0c4c296e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7faf0c4d7b5c  Vlab::SMT::And::accept()
;    @     0x7faf0c3df9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf0c4cba82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7faf0c4c1d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7faf0c4d5d2a  Vlab::SMT::Assert::accept()
;    @     0x7faf0c3df9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf0c4e4699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7faf0c4d5067  Vlab::SMT::Script::visit_children()
;    @     0x7faf0c3df9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7faf0c4c1b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7faf0c4d503c  Vlab::SMT::Script::accept()
;    @     0x7faf0c3df9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf0c4c17bb  Vlab::Solver::ConstraintSolver::start()
