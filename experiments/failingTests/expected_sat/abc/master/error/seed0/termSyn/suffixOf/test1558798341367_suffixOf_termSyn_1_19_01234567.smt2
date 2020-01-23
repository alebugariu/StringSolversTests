(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.at tmp_str0 tmp_int1) (str.substr tmp_str0 tmp_int1 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:23.488715  2756 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f70b4fa8f5d  google::LogMessage::Fail()
;    @     0x7f70b4fab513  google::LogMessage::SendToLog()
;    @     0x7f70b4fa8aeb  google::LogMessage::Flush()
;    @     0x7f70b4faa45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f70b56a8fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f70b56be842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f70b56bd8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f70b55f7102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f70b55fb07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f70b5519dab  std::function<>::operator()()
;    @     0x7f70b5517844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f70b5615cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f70b55199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f70b5518bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f70b55f7a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f70b5611b5c  Vlab::SMT::And::accept()
;    @     0x7f70b55199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f70b55f6ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f70b55fc48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f70b5611b5c  Vlab::SMT::And::accept()
;    @     0x7f70b55199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f70b5605a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f70b55fd3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f70b5611ebe  Vlab::SMT::Or::accept()
;    @     0x7f70b55199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f70b5605a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f70b55fbd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f70b560fd2a  Vlab::SMT::Assert::accept()
;    @     0x7f70b55199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f70b561e699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f70b560f067  Vlab::SMT::Script::visit_children()
;    @     0x7f70b55199e0  Vlab::SMT::Visitor::visit_children_of()
