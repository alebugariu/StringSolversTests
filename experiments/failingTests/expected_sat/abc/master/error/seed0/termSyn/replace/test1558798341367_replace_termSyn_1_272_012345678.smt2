(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int20 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.replace (str.replace tmp_str0 tmp_str0 tmp_str0) (str.at tmp_str0 tmp_int5) (int.to.str tmp_int5)) (str.at tmp_str0 tmp_int20)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_int20 = 0
;actual status: not_implemented
;I0818 17:37:16.879082  3251 UnaryAutomaton.cpp:325] 1
;I0818 17:37:16.879129  3251 UnaryAutomaton.cpp:326] 1
;I0818 17:37:16.879138  3251 UnaryAutomaton.cpp:327] 1
;I0818 17:37:16.892163  3251 SymbolTable.cpp:304] tmp_int20,1
;F0818 17:37:16.951100  3251 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f85215e9f5d  google::LogMessage::Fail()
;    @     0x7f85215ec513  google::LogMessage::SendToLog()
;    @     0x7f85215e9aeb  google::LogMessage::Flush()
;    @     0x7f85215eb45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f8521c0da26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f8521c5b992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f8521b5a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8521c0c762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f8521c58df0  Vlab::SMT::ToString::accept()
;    @     0x7f8521b5a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8521c0cf86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f8521c59400  Vlab::SMT::Replace::accept()
;    @     0x7f8521b5a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8521c077f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f8521c54450  Vlab::SMT::Eq::accept()
;    @     0x7f8521b5a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8521c05878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f8521c465ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f8521c3d96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f8521c52b5c  Vlab::SMT::And::accept()
;    @     0x7f8521b5a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8521c46a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8521c3cd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f8521c50d2a  Vlab::SMT::Assert::accept()
;    @     0x7f8521b5a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8521c5f699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f8521c50067  Vlab::SMT::Script::visit_children()
;    @     0x7f8521b5a9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f8521c3cb35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f8521c5003c  Vlab::SMT::Script::accept()
;    @     0x7f8521b5a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8521c3c7bb  Vlab::Solver::ConstraintSolver::start()
