(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.prefixof (str.substr tmp_str0 tmp_int1 tmp_int1) (str.replace tmp_str0 tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:31.608536  2844 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f27c85f4f5d  google::LogMessage::Fail()
;    @     0x7f27c85f7513  google::LogMessage::SendToLog()
;    @     0x7f27c85f4aeb  google::LogMessage::Flush()
;    @     0x7f27c85f645e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f27c8cf4fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f27c8d0a842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f27c8d098f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f27c8c43102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f27c8c4707b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f27c8b65dab  std::function<>::operator()()
;    @     0x7f27c8b63844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f27c8c61cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f27c8b659ad  Vlab::SMT::Visitor::visit()
;    @     0x7f27c8b64bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f27c8c43a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f27c8c5db5c  Vlab::SMT::And::accept()
;    @     0x7f27c8b659ad  Vlab::SMT::Visitor::visit()
;    @     0x7f27c8c42ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f27c8c4848c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f27c8c5db5c  Vlab::SMT::And::accept()
;    @     0x7f27c8b659ad  Vlab::SMT::Visitor::visit()
;    @     0x7f27c8c51a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f27c8c493e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f27c8c5debe  Vlab::SMT::Or::accept()
;    @     0x7f27c8b659ad  Vlab::SMT::Visitor::visit()
;    @     0x7f27c8c51a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f27c8c47d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f27c8c5bd2a  Vlab::SMT::Assert::accept()
;    @     0x7f27c8b659ad  Vlab::SMT::Visitor::visit()
;    @     0x7f27c8c6a699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f27c8c5b067  Vlab::SMT::Script::visit_children()
;    @     0x7f27c8b659e0  Vlab::SMT::Visitor::visit_children_of()
