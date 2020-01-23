(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.contains (str.++ tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;actual status: not_implemented
;*** Check failure stack trace: ***
;    @     0x7f45da694f5d  google::LogMessage::Fail()
;    @     0x7f45da697513  google::LogMessage::SendToLog()
;    @     0x7f45da694aeb  google::LogMessage::Flush()
;    @     0x7f45da69645e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f45dad94fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f45dadaa842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f45dada98f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f45dace3102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f45dace707b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f45dac05dab  std::function<>::operator()()
;    @     0x7f45dac03844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f45dad01cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f45dac059ad  Vlab::SMT::Visitor::visit()
;    @     0x7f45dac04bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f45dace3a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f45dacfdb5c  Vlab::SMT::And::accept()
;    @     0x7f45dac059ad  Vlab::SMT::Visitor::visit()
;    @     0x7f45dace2ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f45dace848c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f45dacfdb5c  Vlab::SMT::And::accept()
;    @     0x7f45dac059ad  Vlab::SMT::Visitor::visit()
;    @     0x7f45dacf1a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f45dace93e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f45dacfdebe  Vlab::SMT::Or::accept()
;    @     0x7f45dac059ad  Vlab::SMT::Visitor::visit()
;    @     0x7f45dacf1a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f45dace7d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f45dacfbd2a  Vlab::SMT::Assert::accept()
;    @     0x7f45dac059ad  Vlab::SMT::Visitor::visit()
;    @     0x7f45dad0a699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f45dacfb067  Vlab::SMT::Script::visit_children()
;    @     0x7f45dac059e0  Vlab::SMT::Visitor::visit_children_of()
