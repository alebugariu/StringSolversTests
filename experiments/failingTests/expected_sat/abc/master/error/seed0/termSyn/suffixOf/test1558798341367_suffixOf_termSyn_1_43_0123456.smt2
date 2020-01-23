(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.suffixof (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:26.013294  2784 UnaryAutomaton.cpp:325] 1
;I0818 17:36:26.013317  2784 UnaryAutomaton.cpp:326] 1
;I0818 17:36:26.013325  2784 UnaryAutomaton.cpp:327] 1
;F0818 17:36:26.043401  2784 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f73c48f8f5d  google::LogMessage::Fail()
;    @     0x7f73c48fb513  google::LogMessage::SendToLog()
;    @     0x7f73c48f8aeb  google::LogMessage::Flush()
;    @     0x7f73c48fa45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f73c4ff8fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f73c500e842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f73c500d8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f73c4f47102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f73c4f4b07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f73c4e69dab  std::function<>::operator()()
;    @     0x7f73c4e67844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f73c4f65cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f73c4e699ad  Vlab::SMT::Visitor::visit()
;    @     0x7f73c4e68bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f73c4f47a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f73c4f61b5c  Vlab::SMT::And::accept()
;    @     0x7f73c4e699ad  Vlab::SMT::Visitor::visit()
;    @     0x7f73c4f46ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f73c4f4c48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f73c4f61b5c  Vlab::SMT::And::accept()
;    @     0x7f73c4e699ad  Vlab::SMT::Visitor::visit()
;    @     0x7f73c4f55a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f73c4f4d3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f73c4f61ebe  Vlab::SMT::Or::accept()
;    @     0x7f73c4e699ad  Vlab::SMT::Visitor::visit()
;    @     0x7f73c4f55a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f73c4f4bd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f73c4f5fd2a  Vlab::SMT::Assert::accept()
;    @     0x7f73c4e699ad  Vlab::SMT::Visitor::visit()
;    @     0x7f73c4f6e699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f73c4f5f067  Vlab::SMT::Script::visit_children()
;    @     0x7f73c4e699e0  Vlab::SMT::Visitor::visit_children_of()
