(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun s2 () String)
(declare-fun length () Int)
(declare-fun offset () Int)
(declare-fun s1 () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun tmp_str3 () String)
(declare-fun tmp_bool4_fresh () Bool)
(assert  
 (not (= (str.substr s offset length) result)))
(assert  
 (ite (and (and (>= offset 0) (< offset (str.len s))) (> length 0)) (and (= (str.++ (str.++ s1 s2) s3) s) (and (and (= (str.len s1) offset) (= (str.len s2) length)) (= (= s2 result) tmp_bool4_fresh))) (= (= result "") tmp_bool4_fresh)))
(assert  
 (= (str.contains tmp_str3 tmp_str3) tmp_bool4_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;length = NO VALUE
;result = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;tmp_bool4_fresh = true
;tmp_str3 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: not_implemented
;*** Check failure stack trace: ***
;    @     0x7f72d5666f5d  google::LogMessage::Fail()
;    @     0x7f72d5669513  google::LogMessage::SendToLog()
;    @     0x7f72d5666aeb  google::LogMessage::Flush()
;    @     0x7f72d566845e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f72d5d66fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f72d5d7c842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f72d5d7b8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f72d5cb5102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f72d5cb907b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f72d5bd7dab  std::function<>::operator()()
;    @     0x7f72d5bd5844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f72d5cd3cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f72d5bd79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f72d5bd6bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f72d5cb5a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f72d5ccfb5c  Vlab::SMT::And::accept()
;    @     0x7f72d5bd79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f72d5cb4ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f72d5cba48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f72d5ccfb5c  Vlab::SMT::And::accept()
;    @     0x7f72d5bd79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f72d5cc3a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f72d5cbb3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f72d5ccfebe  Vlab::SMT::Or::accept()
;    @     0x7f72d5bd79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f72d5cc3a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f72d5cba8c1  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f72d5ccfb5c  Vlab::SMT::And::accept()
;    @     0x7f72d5bd79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f72d5cc3a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f72d5cbb3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f72d5ccfebe  Vlab::SMT::Or::accept()
