(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.at tmp_str0 tmp_int1) (str.replace tmp_str0 tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:21.439815  2734 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f53e289af5d  google::LogMessage::Fail()
;    @     0x7f53e289d513  google::LogMessage::SendToLog()
;    @     0x7f53e289aaeb  google::LogMessage::Flush()
;    @     0x7f53e289c45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f53e2f9afcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f53e2fb0842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f53e2faf8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f53e2ee9102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f53e2eed07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f53e2e0bdab  std::function<>::operator()()
;    @     0x7f53e2e09844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f53e2f07cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f53e2e0b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f53e2e0abee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f53e2ee9a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f53e2f03b5c  Vlab::SMT::And::accept()
;    @     0x7f53e2e0b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f53e2ee8ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f53e2eee48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f53e2f03b5c  Vlab::SMT::And::accept()
;    @     0x7f53e2e0b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f53e2ef7a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f53e2eef3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f53e2f03ebe  Vlab::SMT::Or::accept()
;    @     0x7f53e2e0b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f53e2ef7a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f53e2eedd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f53e2f01d2a  Vlab::SMT::Assert::accept()
;    @     0x7f53e2e0b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f53e2f10699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f53e2f01067  Vlab::SMT::Script::visit_children()
;    @     0x7f53e2e0b9e0  Vlab::SMT::Visitor::visit_children_of()
