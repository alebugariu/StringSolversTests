(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.prefixof (str.substr tmp_str0 tmp_int1 tmp_int1) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:30.998641  2838 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fd7bc709f5d  google::LogMessage::Fail()
;    @     0x7fd7bc70c513  google::LogMessage::SendToLog()
;    @     0x7fd7bc709aeb  google::LogMessage::Flush()
;    @     0x7fd7bc70b45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fd7bce09fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fd7bce1f842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fd7bce1e8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fd7bcd58102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fd7bcd5c07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fd7bcc7adab  std::function<>::operator()()
;    @     0x7fd7bcc78844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fd7bcd76cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fd7bcc7a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd7bcc79bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fd7bcd58a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fd7bcd72b5c  Vlab::SMT::And::accept()
;    @     0x7fd7bcc7a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd7bcd57ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fd7bcd5d48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fd7bcd72b5c  Vlab::SMT::And::accept()
;    @     0x7fd7bcc7a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd7bcd66a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd7bcd5e3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fd7bcd72ebe  Vlab::SMT::Or::accept()
;    @     0x7fd7bcc7a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd7bcd66a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd7bcd5cd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fd7bcd70d2a  Vlab::SMT::Assert::accept()
;    @     0x7fd7bcc7a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd7bcd7f699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd7bcd70067  Vlab::SMT::Script::visit_children()
;    @     0x7fd7bcc7a9e0  Vlab::SMT::Visitor::visit_children_of()
