(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.substr tmp_str0 tmp_int1 tmp_int1) (str.at tmp_str0 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:27.836848  2804 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f0408930f5d  google::LogMessage::Fail()
;    @     0x7f0408933513  google::LogMessage::SendToLog()
;    @     0x7f0408930aeb  google::LogMessage::Flush()
;    @     0x7f040893245e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f0409030fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f0409046842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f04090458f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f0408f7f102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f0408f8307b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f0408ea1dab  std::function<>::operator()()
;    @     0x7f0408e9f844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f0408f9dcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f0408ea19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0408ea0bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f0408f7fa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f0408f99b5c  Vlab::SMT::And::accept()
;    @     0x7f0408ea19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0408f7eca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f0408f8448c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f0408f99b5c  Vlab::SMT::And::accept()
;    @     0x7f0408ea19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0408f8da82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0408f853e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f0408f99ebe  Vlab::SMT::Or::accept()
;    @     0x7f0408ea19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0408f8da82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0408f83d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f0408f97d2a  Vlab::SMT::Assert::accept()
;    @     0x7f0408ea19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0408fa6699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f0408f97067  Vlab::SMT::Script::visit_children()
;    @     0x7f0408ea19e0  Vlab::SMT::Visitor::visit_children_of()
