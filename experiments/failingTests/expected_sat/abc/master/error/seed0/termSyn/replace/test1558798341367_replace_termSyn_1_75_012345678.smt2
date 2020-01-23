(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.at tmp_str0 tmp_int1) (str.replace tmp_str0 tmp_str0 tmp_str0) (int.to.str tmp_int1)) (str.at tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:16.417800  3247 UnaryAutomaton.cpp:325] 1
;I0818 17:37:16.417836  3247 UnaryAutomaton.cpp:326] 1
;I0818 17:37:16.417845  3247 UnaryAutomaton.cpp:327] 1
;F0818 17:37:16.488443  3247 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fee319b1f5d  google::LogMessage::Fail()
;    @     0x7fee319b4513  google::LogMessage::SendToLog()
;    @     0x7fee319b1aeb  google::LogMessage::Flush()
;    @     0x7fee319b345e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fee31fd5a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fee32023992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fee31f229ad  Vlab::SMT::Visitor::visit()
;    @     0x7fee31fd4762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fee32020df0  Vlab::SMT::ToString::accept()
;    @     0x7fee31f229ad  Vlab::SMT::Visitor::visit()
;    @     0x7fee31fd4f86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fee32021400  Vlab::SMT::Replace::accept()
;    @     0x7fee31f229ad  Vlab::SMT::Visitor::visit()
;    @     0x7fee31fcf7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fee3201c450  Vlab::SMT::Eq::accept()
;    @     0x7fee31f229ad  Vlab::SMT::Visitor::visit()
;    @     0x7fee31fcd878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fee3200e5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fee3200596e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fee3201ab5c  Vlab::SMT::And::accept()
;    @     0x7fee31f229ad  Vlab::SMT::Visitor::visit()
;    @     0x7fee3200ea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fee32004d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fee32018d2a  Vlab::SMT::Assert::accept()
;    @     0x7fee31f229ad  Vlab::SMT::Visitor::visit()
;    @     0x7fee32027699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fee32018067  Vlab::SMT::Script::visit_children()
;    @     0x7fee31f229e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fee32004b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fee3201803c  Vlab::SMT::Script::accept()
;    @     0x7fee31f229ad  Vlab::SMT::Visitor::visit()
;    @     0x7fee320047bb  Vlab::Solver::ConstraintSolver::start()
