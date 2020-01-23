(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.suffixof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;actual status: not_implemented
;*** Check failure stack trace: ***
;    @     0x7fa0d5905f5d  google::LogMessage::Fail()
;    @     0x7fa0d5908513  google::LogMessage::SendToLog()
;    @     0x7fa0d5905aeb  google::LogMessage::Flush()
;    @     0x7fa0d590745e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fa0d6005fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fa0d601b842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fa0d601a8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fa0d5f54102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fa0d5f5807b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fa0d5e76dab  std::function<>::operator()()
;    @     0x7fa0d5e74844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fa0d5f72cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fa0d5e769ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa0d5e75bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fa0d5f54a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fa0d5f6eb5c  Vlab::SMT::And::accept()
;    @     0x7fa0d5e769ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa0d5f53ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fa0d5f5948c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa0d5f6eb5c  Vlab::SMT::And::accept()
;    @     0x7fa0d5e769ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa0d5f62a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa0d5f5a3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fa0d5f6eebe  Vlab::SMT::Or::accept()
;    @     0x7fa0d5e769ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa0d5f62a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa0d5f58d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa0d5f6cd2a  Vlab::SMT::Assert::accept()
;    @     0x7fa0d5e769ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa0d5f7b699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa0d5f6c067  Vlab::SMT::Script::visit_children()
;    @     0x7fa0d5e769e0  Vlab::SMT::Visitor::visit_children_of()
