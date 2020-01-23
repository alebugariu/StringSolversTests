(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.++ tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int6)) (str.at tmp_str0 tmp_int6)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;actual status: not_implemented
;I0818 17:37:11.942148  3203 UnaryAutomaton.cpp:325] 1
;I0818 17:37:11.944075  3203 UnaryAutomaton.cpp:326] 1
;I0818 17:37:11.944097  3203 UnaryAutomaton.cpp:327] 1
;F0818 17:37:12.012104  3203 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fa8aa2e2f5d  google::LogMessage::Fail()
;    @     0x7fa8aa2e5513  google::LogMessage::SendToLog()
;    @     0x7fa8aa2e2aeb  google::LogMessage::Flush()
;    @     0x7fa8aa2e445e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fa8aa906a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fa8aa954992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fa8aa8539ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa8aa905762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fa8aa951df0  Vlab::SMT::ToString::accept()
;    @     0x7fa8aa8539ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa8aa905f86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fa8aa952400  Vlab::SMT::Replace::accept()
;    @     0x7fa8aa8539ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa8aa9007f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fa8aa94d450  Vlab::SMT::Eq::accept()
;    @     0x7fa8aa8539ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa8aa8fe878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fa8aa93f5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fa8aa93696e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa8aa94bb5c  Vlab::SMT::And::accept()
;    @     0x7fa8aa8539ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa8aa93fa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa8aa935d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa8aa949d2a  Vlab::SMT::Assert::accept()
;    @     0x7fa8aa8539ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa8aa958699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa8aa949067  Vlab::SMT::Script::visit_children()
;    @     0x7fa8aa8539e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fa8aa935b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fa8aa94903c  Vlab::SMT::Script::accept()
;    @     0x7fa8aa8539ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa8aa9357bb  Vlab::Solver::ConstraintSolver::start()
