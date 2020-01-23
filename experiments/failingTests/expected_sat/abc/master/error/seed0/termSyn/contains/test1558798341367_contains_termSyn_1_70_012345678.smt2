(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.substr tmp_str0 tmp_int1 tmp_int1) (str.substr tmp_str0 tmp_int1 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:37:05.077735  3136 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fb863dfaf5d  google::LogMessage::Fail()
;    @     0x7fb863dfd513  google::LogMessage::SendToLog()
;    @     0x7fb863dfaaeb  google::LogMessage::Flush()
;    @     0x7fb863dfc45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fb8644fafcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fb864510842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fb86450f8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fb864449102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fb86444d07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fb86436bdab  std::function<>::operator()()
;    @     0x7fb864369844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fb864467cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fb86436b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb86436abee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fb864449a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fb864463b5c  Vlab::SMT::And::accept()
;    @     0x7fb86436b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb864448ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fb86444e48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fb864463b5c  Vlab::SMT::And::accept()
;    @     0x7fb86436b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb864457a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb86444f3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fb864463ebe  Vlab::SMT::Or::accept()
;    @     0x7fb86436b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb864457a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb86444dd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fb864461d2a  Vlab::SMT::Assert::accept()
;    @     0x7fb86436b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb864470699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fb864461067  Vlab::SMT::Script::visit_children()
;    @     0x7fb86436b9e0  Vlab::SMT::Visitor::visit_children_of()
