(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.substr tmp_str0 tmp_int1 tmp_int1) (str.substr tmp_str0 tmp_int1 tmp_int1) (int.to.str tmp_int1)) (str.at tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:11.139469  3195 UnaryAutomaton.cpp:325] 1
;I0818 17:37:11.141630  3195 UnaryAutomaton.cpp:326] 1
;I0818 17:37:11.141644  3195 UnaryAutomaton.cpp:327] 1
;F0818 17:37:11.201839  3195 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f0bdb739f5d  google::LogMessage::Fail()
;    @     0x7f0bdb73c513  google::LogMessage::SendToLog()
;    @     0x7f0bdb739aeb  google::LogMessage::Flush()
;    @     0x7f0bdb73b45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f0bdbd5da26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f0bdbdab992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f0bdbcaa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0bdbd5c762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f0bdbda8df0  Vlab::SMT::ToString::accept()
;    @     0x7f0bdbcaa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0bdbd5cf86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f0bdbda9400  Vlab::SMT::Replace::accept()
;    @     0x7f0bdbcaa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0bdbd577f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f0bdbda4450  Vlab::SMT::Eq::accept()
;    @     0x7f0bdbcaa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0bdbd55878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f0bdbd965ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f0bdbd8d96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f0bdbda2b5c  Vlab::SMT::And::accept()
;    @     0x7f0bdbcaa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0bdbd96a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0bdbd8cd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f0bdbda0d2a  Vlab::SMT::Assert::accept()
;    @     0x7f0bdbcaa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0bdbdaf699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f0bdbda0067  Vlab::SMT::Script::visit_children()
;    @     0x7f0bdbcaa9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0bdbd8cb35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f0bdbda003c  Vlab::SMT::Script::accept()
;    @     0x7f0bdbcaa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0bdbd8c7bb  Vlab::Solver::ConstraintSolver::start()
