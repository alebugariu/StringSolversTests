(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.suffixof (int.to.str tmp_int0) (str.replace tmp_str2 tmp_str2 tmp_str2)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:25.276825  2776 UnaryAutomaton.cpp:325] 1
;I0818 17:36:25.276841  2776 UnaryAutomaton.cpp:326] 1
;I0818 17:36:25.276849  2776 UnaryAutomaton.cpp:327] 1
;F0818 17:36:25.286919  2776 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f7324e40f5d  google::LogMessage::Fail()
;    @     0x7f7324e43513  google::LogMessage::SendToLog()
;    @     0x7f7324e40aeb  google::LogMessage::Flush()
;    @     0x7f7324e4245e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f7325540fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f7325556842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f73255558f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f732548f102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f732549307b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f73253b1dab  std::function<>::operator()()
;    @     0x7f73253af844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f73254adcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f73253b19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f73253b0bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f732548fa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f73254a9b5c  Vlab::SMT::And::accept()
;    @     0x7f73253b19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f732548eca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f732549448c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f73254a9b5c  Vlab::SMT::And::accept()
;    @     0x7f73253b19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f732549da82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f73254953e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f73254a9ebe  Vlab::SMT::Or::accept()
;    @     0x7f73253b19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f732549da82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f7325493d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f73254a7d2a  Vlab::SMT::Assert::accept()
;    @     0x7f73253b19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f73254b6699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f73254a7067  Vlab::SMT::Script::visit_children()
;    @     0x7f73253b19e0  Vlab::SMT::Visitor::visit_children_of()
